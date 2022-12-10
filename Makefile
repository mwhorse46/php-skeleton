DOCKER=docker-compose -f ./docker/docker-compose.yml
# #todo change to cli if needed
PHP=php82-fpm

build: install

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

mutation:
	$(DOCKER) run --rm $(PHP) ./vendor/bin/infection --min-msi=80

phpstan:
	$(DOCKER) run --rm $(PHP) ./vendor/bin/phpstan analyse

psalm:
	$(DOCKER) run --rm $(PHP) ./vendor/bin/psalm --show-info=true

standards:
	$(DOCKER) run -e PHP_CS_FIXER_IGNORE_ENV=1 --rm $(PHP) ./vendor/bin/php-cs-fixer fix --dry-run -v

test: standards unit phpstan psalm mutation

# #todo remove unused commands in project
unit:
	$(DOCKER) run --rm php80-cli ./vendor/bin/phpunit
	$(DOCKER) run --rm php81-cli ./vendor/bin/phpunit
	$(DOCKER) run --rm $(PHP) ./vendor/bin/phpunit

# #todo remove this rule if not needed
up:
	$(DOCKER) up -d
