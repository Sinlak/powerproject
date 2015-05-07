# powerproject

to install proper version of sql:

sudo apt-get install mysql
sudo apt-get install mysql-client libmysqlclient-dev

to test socket connection after sql installed:

1) Generate a project to use mysql:
  rails new powerproject -d mysql
2) Goto database.yml and check
development:
adapter: mysql2
encoding: utf8
database: powerproject_development
pool: 5
username: pp_user
password: password
# this line
socket: /var/run/mysqld/mysqld.sock

Database type: mysql
Database name: powerproject_development
Database user_name: pp_user

To grant the proper privileges to pp_user (in mysql) :

GRANT ALL PRIVILEGES ON powerproject_production.* TO 'pp_user'@'localhost' IDENTIFIED BY 'password';
