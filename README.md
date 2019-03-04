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
    
After this, you will be able to access http://localhost:8080/admin