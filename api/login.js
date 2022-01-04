const sessionsetup = require('./sessionsetup') 
const select = require('./db/select.js') 
const insert = require('./db/insert.js') 
const validator = require('./validator/index.js') 
const router = sessionsetup.router
router.post('/login', async (req, res) => {
  //console.log(req.session.login, req.session.user)
  const validate = new validator(req.body)
  validate.addrules('email','required')
  validate.addrules('password','required')
  const validation_result = validate.validate()
  if(!validate.isValid()){
    res.status(400).json(validation_result);
  }else{
    const query = new select
    try{
      var results = await query.first("select * from admin where `email` = ? AND `password` = ?", [req.body.email, sessionsetup.md5(req.body.password)])
      if(results.id){
        req.session.user=results
        req.session.login=true
        res.json(results)
      }else{
        res.json({error:true,data:{message: 'Failed to login'}})
      }
    }catch(ex){
      res.json({error:true,data:ex})
    }
  }
})
router.get('/logout', async (req, res) => {
  req.session.user=undefined
  req.session.login=undefined 
  res.json({data: "logged out"})
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
    const checkuser = new select
    var results = await checkuser.first("select * from admin where `email` = ?", [req.body.email])
    if(results){
      if(results.id){
        res.status(400).json({error:true,data:'User Already Exists'});
      }
    }
    req.body.password = sessionsetup.md5(req.body.password)
    const insert_record = new insert("admin", req.body)
    var inserted_id = await insert_record.add()
    const query = new select
    try{
      var user = await query.first("select * from admin where `id` = ?", [inserted_id])
      res.json(user)
    }catch(ex){
      res.json({error:true,data:ex})
    }
  }
})

module.exports = router