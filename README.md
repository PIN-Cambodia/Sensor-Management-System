# Sensor Management System

This system is a basic information management system / middelware for IoT devices. It is based on Laravel, and includes 
3 basic functionalities:

- Location management
- Sensor management
- Data point management

It has been created as a generic IoT Device backend, with some specific devices implemented.

## Running

This project is docker enabled. The first time you run it, you will have to do the following:

    docker-compose up
    docker-compose exec app /bin/bash -c 'composer install'
    docker-compose exec app /bin/bash -c 'php artisan key:generate'
    docker-compose exec app /bin/bash -c 'php artisan migrate'
    
We use Voyger for the backend, in order to initialise an admin user, you can run the following commands:

    docker-compose exec app /bin/bash -c 'php artisan passport:install'
    docker-compose exec app /bin/bash -c 'php artisan voyager:install'
    docker-compose exec app /bin/bash -c 'php artisan voyager:admin --create'
    
After this, you will be able to access [http://localhost:8080/admin](http://localhost:8080/admin)

## Tests

To run the test suite, first we need to create the test database, and install the needed data (note that this assumes
that composer install, and key:generate has already been run):

    docker-compose exec db /bin/bash -c 'mysql -u root -proot --execute "DROP DATABASE IF EXISTS app_test; CREATE DATABASE app_test; GRANT ALL PRIVILEGES ON app_test.* TO \'app\'@\'%\';"'
    docker-compose exec db /bin/bash -c 'mysql -u root -proot --execute "GRANT ALL PRIVILEGES ON app_test.* TO \"app\"@\"%\";"'
    docker-compose exec app /bin/bash -c 'DB_CONNECTION=testing php artisan migrate'
    docker-compose exec app /bin/bash -c 'DB_CONNECTION=testing php artisan passport:install'
    docker-compose exec app /bin/bash -c 'DB_CONNECTION=testing php artisan voyager:install'

And lastly, we run the actual tests:

    docker-compose exec app /bin/bash -c 'DB_CONNECTION=testing vendor/bin/phpunit'