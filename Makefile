DOCKER=docker-compose -f ./docker/docker-compose.yml
# #todo change to cli if needed
PHP=php81-fpm

coverage:
	$(DOCKER) run --rm $(PHP) php -dxdebug.mode=coverage ./vendor/bin/phpunit --coverage-text

# #todo remove this rule if not needed
down:
	$(DOCKER) down --remove-orphans

fix:
	$(DOCKER) run --rm $(PHP) ./vendor/bin/php-cs-fixer fix

install:
	$(DOCKER) build
	$(DOCKER) run --rm $(PHP) composer install

phpstan:
	$(DOCKER) run --rm $(PHP) ./vendor/bin/phpstan analyse

psalm:
	$(DOCKER) run --rm $(PHP) ./vendor/bin/psalm --show-info=true

standards:
	$(DOCKER) run --rm $(PHP) ./vendor/bin/php-cs-fixer fix --dry-run -v

test: standards phpstan psalm coverage

# #todo remove unused commands in project
unit:
	$(DOCKER) run --rm php74-cli ./vendor/bin/phpunit
	$(DOCKER) run --rm php80-cli ./vendor/bin/phpunit
	$(DOCKER) run --rm $(PHP) ./vendor/bin/phpunit

# #todo remove this rule if not needed
up:
	$(DOCKER) up -d
