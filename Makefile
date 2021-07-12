CONFIG=./docker/docker-compose.yml
# adapt
PHP=php

check: coverage phpstan psalm standards

coverage:
	docker-compose -f $(CONFIG) run --rm $(PHP) -dxdebug.mode=coverage ./vendor/bin/phpunit --coverage-text

# adapt project only
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

# adapt
unit:
	docker-compose -f $(CONFIG) run --rm php74 ./vendor/bin/phpunit
	docker-compose -f $(CONFIG) run --rm $(PHP) ./vendor/bin/phpunit
	docker-compose -f $(CONFIG) run --rm php81 ./vendor/bin/phpunit

# adapt project only
up:
	docker-compose -f $(CONFIG) up -d
