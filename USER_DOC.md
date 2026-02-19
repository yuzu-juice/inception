*This project has been created as part of the 42 curriculum by takitaga.*

# User documentation

## How to start the project

1. Copy src/.env.example file to src/.env file and replace some values to you want to use.

2. Move to srcs/vm directory and run `make up && make ssh` command.

3. Move to /vagrant directory and run `make up` command.

4. Access to `https://takitaga.42.fr` via any browser in VM instance.

## Stop the project

1. Move to srcs/vm directory and run `make destroy` command.

## Structure

- nginx: provide web server
- wordpress: provider static files and php cgi scripts
- mariadb: provide database used by wordpress

## Wordpress website

website: https://takitaga.42.fr
admin panel: https://takitaga.42.fr/wp-admin
