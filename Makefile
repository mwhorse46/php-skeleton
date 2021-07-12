CONFIG=./docker/docker-compose.yml
PHP=php80

check: coverage phpstan psalm standards unit

coverage:
	docker-compose -f $(CONFIG) run --rm $(PHP) -dxdebug.mode=coverage ./vendor/bin/phpunit --coverage-text

down:
	docker-compose -f $(CONFIG) down --remove-orphans

fix:
	docker-compose -f $(CONFIG) run --rm $(PHP) ./vendor/bin/php-cs-fixer fix

install:
	docker-compose -f $(CONFIG) build
	docker-compose -f $(CONFIG) run --rm $(PHP) composer install

phpstan:
	docker-compose -f $(CONFIG) run --rm $(PHP) ./vendor/bin/phpstan analyse

psalm:
	docker-compose -f $(CONFIG) run --rm $(PHP) ./vendor/bin/psalm --show-info=true

standards:
	docker-compose -f $(CONFIG) run --rm $(PHP) ./vendor/bin/php-cs-fixer fix --dry-run -v

unit:
	docker-compose -f $(CONFIG) run --rm php74 ./vendor/bin/phpunit
	docker-compose -f $(CONFIG) run --rm $(PHP) ./vendor/bin/phpunit

up:
	docker-compose -f $(CONFIG) up -d
