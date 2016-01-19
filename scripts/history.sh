cd git/
git clone git@github.com:aaronelmore/github-plus-university.git
cd github-plus-university/
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku login
npm install
#to create:  heroku create uchidb
# toupdate" git push heroku master
heroku ps:scale web=1
heroku logs --tail
heroku addons:create heroku-postgresql:hobby-dev
heroku config:set TOKEN="XXX"
heroku config:set CLIENT_ID="XXX"
heroku config:set CLIENT_SECRET="XXX"
heroku config:set SESSION_SECRET="XXX"
git push heroku master
#vim students.csv
heroku logs --tail
