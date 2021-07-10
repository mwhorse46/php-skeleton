CONFIG=./docker/docker-compose.yml

check: coverage phpstan psalm standards unit

coverage:
	docker-compose -f $(CONFIG) run php80 -dxdebug.mode=coverage ./vendor/bin/phpunit --coverage-text

down:
	docker-compose -f $(CONFIG) down

fix:
	docker-compose -f $(CONFIG) run php80 ./vendor/bin/php-cs-fixer fix

phpstan:
	docker-compose -f $(CONFIG) run php80 ./vendor/bin/phpstan analyse

psalm:
	docker-compose -f $(CONFIG) run php80 ./vendor/bin/psalm --show-info=true

standards:
	docker-compose -f $(CONFIG) run php80 ./vendor/bin/php-cs-fixer fix --dry-run -v

unit:
	docker-compose -f $(CONFIG) run php74 ./vendor/bin/phpunit
	docker-compose -f $(CONFIG) run php80 ./vendor/bin/phpunit

up:
	docker-compose -f $(CONFIG) up -d
