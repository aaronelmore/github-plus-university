var secret = {}
secret.TOKEN = process.env.TOKEN;
secret.CLIENT_ID = process.env.CLIENT_ID;
secret.CLIENT_SECRET = process.env.CLIENT_SECRET;
secret.SESSION_SECRET = process.env.SESSION_SECRET;

module.exports = secret;
