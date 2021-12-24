const express = require('express')
const md5 = require('md5')
const cookieParser = require('cookie-parser');
const sessions = require('express-session');
const app = express()
const oneDay = 1000 * 60 * 60 * 24;
app.use(sessions({
  secret: md5("cherryvoiceincyrux"),
  saveUninitialized:true,
  cookie: { maxAge: oneDay },
  resave: false
}));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cookieParser());

const login = require('./login')
app.use(login)

if (require.main === module) {
  const port = 3001
  app.listen(port, () => {
    console.log(`API server listening on port ${port}`)
  })
}

module.exports = app