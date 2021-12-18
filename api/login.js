const { Router } = require('express')
const router = Router()
const select = require('./db/select.js') 
const insert = require('./db/insert.js') 
const validator = require('./validator/index.js') 
var md5 = require('md5');
router.post('/login', async (req, res) => {
  const validate = new validator(req.body)
  validate.addrules('email','required')
  validate.addrules('password','required')
  const validation_result = validate.validate()
  if(!validate.isValid()){
    res.status(400).json(validation_result);
  }else{
    const query = new select
    var results = await query.first("select * from admin where `email` = ? AND `password` = ?", [req.body.email, md5(req.body.password)])
    res.json(results)
  }
})
router.post('/register', async (req, res) => {
  const validate = new validator(req.body)
  validate.addrules('email','required')
  validate.addrules('password','required')
  validate.addrules('name','required')
  const validation_result = validate.validate()
  if(!validate.isValid()){
    res.status(400).json(validation_result);
  }else{
    req.body.password = md5(req.body.password)
    const insert_record = new insert("admin", req.body)
    var inserted_id = await insert_record.add()
    const query = new select
    var user = await query.first("select * from admin where `id` = ?", [inserted_id])
    res.json(user)
  }
})

module.exports = router