var pg = require('pg');


console.log('Creating DB...');

pg.connect(process.env.DATABASE_URL, function(err, client, done) {
  client.query('create table students (username TEXT, token TEXT, repo TEXT)', function(err, result) {
    done();
    if (err)
     { console.error(err); response.send("Error " + err); }
    else
     { response.send(result.rows); }
  });
});


