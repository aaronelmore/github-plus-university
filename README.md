github-plus-university
======================

This source code goes along with my two blog posts:

- [GitHub + University: How College Coding Assignments Should Work][post1]
- [GitHub + University: A Follow Up][post2]

## Install

To install it, just be sure to have NodeJS installed and run the following:

```bash
$ cd app/
$ npm install
```
## Config

There are a lot of hardcoded strings within the scripts, if I have time, I will
try to remove these.

In addition to the hardcoded strings, a **students.csv** file is required. It
should be a CSV file of the list of students in the class.

It should follow the format below:

```
last_name, first_name, university_id
```

check out the sample [students.csv][students]

## Setup GitHubAPI

Account -> Applications
- Request new application
- Generate new token

Add both to the secret.js

## Running

To run it, just run:

```bash
$ node server.js
```

or you might want to look into a tool like [forever][forever] which ensures that
your server won't crash if it has an unexpected error.

## Heroku

https://devcenter.heroku.com/articles/getting-started-with-nodejs#provision-a-database

__Set up and create__
heroku create
heroku addons:add heroku-postgresql:dev
heroku ps:scale web=1

__config__
heroku config:set TOKEN="yourtoken"

heroku config:set CLIENT_ID="yourclient"

heroku config:set CLIENT_SECRET="etc"

heroku config:set SESSION_SECRET="etc"

for local testing add to .env

__push changes and open app__
git push heroku master
heroku open

__Test Locally__
npm install
foreman start web

## GitHub steps
Create Organization

Add owner

create token under owner

Create Application under org

Create a studentteam team under org

getTeams from node api to get team ID


## License

This code is distributed under the MIT license. For more info, read the
[LICENSE](license) file distributed with the source code.

[forever]: https://github.com/nodejitsu/forever
[license]: /LICENSE
[post1]: http://joshldavis.com/2014/01/19/github-university-how-college-assignments-should-work/
[post2]: http://joshldavis.com/2014/06/30/github-university-follow-up/
[students]: /app/students.csv
