# skeleton

[![PDS Skeleton](https://img.shields.io/badge/pds-skeleton-blue.svg?style=flat-square)](https://github.com/php-pds/skeleton)

A starting point for other projects.

## Installation

Create a new project based on the skeleton project. The PATH placeholder should be replaced with the path or the name of the new project.

```bash
composer create-project milan-miscevic/skeleton PATH
cd PATH
git init
git remote add origin REPOSITORY_URL
git add --all
git commit -m "Initial commit (based on the skeleton project)"
git push origin master
```

Update the composer.json data (fields are below) and the README.md file.

1. name
2. description
3. type (if needed)
4. keywords
5. autoload (the project namespace)
6. autoload-dev (the project namespace)

Commit & push all.

```bash
git add --all
git commit -m "Initial setup commit"
git push origin master
```

Continue work on the new project.
