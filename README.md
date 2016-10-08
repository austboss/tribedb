# TribeDB

Work in progress!

## License

TBD

## Installing PostgreSQL locally

```
$ sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
$ wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
$ sudo apt-get update
$ sudo apt-get install postgresql postgresql-contrib
```

To login to database

```
$ psql
```


## Getting started

Update Gemfile to use PostgreSQL, then install

```
$ bundle update
```

Update config/database.yml to use "adapter: postgresql"


To run the app in a local server:

```
$ rails server -b $IP -p $PORT
```

Initialize Git repository

```
$ git init
$ git add -A
$ git commit -m "Initialize repository"
$ git remote add origin git@github.com:austboss/tribedb.git
```

Create app on Heroku

``` 
$ heroku create tribedb-####
$ git push heroku master
$ heroku run rails db:migrate
```


## Notes

Don't manually mess with any of the database migration files!



## Troubleshooting

If getting "connection refused" errors, database may need to be restarted

```
$ sudo service postgresql restart
```


## To-do


Add SetListSong
    *^ShowDate
    *SetNumber
    *SongNumber
    ^SongID
    -Length
    -Transition
    -Notes
Add User
    *Username
Add UserShow
    *^UserID
    *^ShowID
Update views to show ref names instead of ID's