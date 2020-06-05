<<<<<<< HEAD
# README

<!-- assginment -->

Brigitta Gloria Hegarini - s3766172
Dana Dawaname - s3652553
Highest Level we attempted: PASS
Ega toogl: https://toggl.com/app/3597355/projects/160848271/team
Dawaname Dawaname toogl: https://toggl.com/app/4336686/projects/161056582/team
heroku deployment url: https://nameless-reef-03788.herokuapp.com/

Last heroku deployment log: 
s3766172@student.rmit.edu.au: Deployed 52d703fc
May 15 at 8:03 PM · v6

Git name: RAD2020_3652553_3766172
https://github.com/BrigittaHega/RAD2020_3652553_3766172.git




This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# assginment for rapid 2020 semester 1




<!-- ======= -->
<!-- Dawaname's tut code, may cause jquery error -->
### CHEATSHEET

1. `docker-compose run web rails new . --force --no-deps --database=postgresql`
2. `docker-compose build`
3. `config/database.yml`

```yml
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: alex
  password:
  pool: 5

development:
  <<: *default
  database: myapp_development


test:
  <<: *default
  database: myapp_test
```

4. `docker-compose up`
5. `docker-compose run web rake db:create`
6. hit `http://localhost:3000`
7. `docker-compose down`
>>>>>>> 643e381bb3f0898e7a036c2cf7cea9e08c8bac6e
