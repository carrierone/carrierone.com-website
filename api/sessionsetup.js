const { Router } = require('express')
var md5 = require('md5');
const sessions = require('express-session');
const router = Router()
const oneDay = 1000 * 60 * 60 * 24;
router.use(sessions({
  secret: md5("cherryvoiceincyrux"),
  saveUninitialized:true,
  cookie: { maxAge: oneDay },
  resave: false
}));
module.exports = {router, md5};