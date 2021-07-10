# php-skeleton

[![Software License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![PDS Skeleton](https://img.shields.io/badge/pds-skeleton-blue.svg?style=flat-square)](https://github.com/php-pds/skeleton)

[![GitHub Build](https://github.com/milan-miscevic/php-skeleton/workflows/Build/badge.svg?branch=master)](https://github.com/milan-miscevic/php-skeleton/actions)
[![Type Coverage](https://shepherd.dev/github/milan-miscevic/php-skeleton/coverage.svg)](https://shepherd.dev/github/milan-miscevic/php-skeleton)

This repository provides a starting point for other PHP projects.

## Usage

1. Create a new project based on this GitHub template.
1. Clone the project.
1. Update the composer.json data:
    * name
    * type (if needed)
    * description
    * keywords
    * autoload (the project namespace)
    * autoload-dev (the project namespace)
1. Update the README.md file.
1. Run `composer update`.
1. Commit & push.
1. Continue work on the new project.

## Installation

Fetch dependencies with Composer.

```bash
composer install
```

## Make commands

Starting and shutting down:

```bash
make up
make down
```

Code fixing against the coding standards:

```bash
make fix
```

Code checking:

```bash
make check # includes all commands below
make coverage
make phpstan
make psalm
make standards
make unit
```
