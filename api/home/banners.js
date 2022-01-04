const sessionsetup = require('../sessionsetup')
const multer = require('multer');
const upload = multer({dest: 'assets/uploads/homebanners'});
const select = require('../db/select.js')
const insert = require('../db/insert.js')
const validator = require('../validator/index.js')
const router = sessionsetup.router
router.get('/', async (req, res) => {
  if(req.session.login===true){
    const query = new select
    try {
      var results = await query.get("select * from home_banners order by id desc")
      res.json(results)
    } catch (ex) {
      res.json({ error: true, data: ex })
    }
  }else{
    res.json({error:true,data:"You are not authorized"})
  }
})
router.post('/store',upload.single('media'), async (req, res) => {
  if(req.session.login===true){
    const validate = new validator(req.body)
    validate.addrules('title','required')
    const validation_result = validate.validate()
    if(!validate.isValid()){
      res.status(400).json(validation_result);
    }else{
      console.log(req.body)
      if (!req.body.media) {
        res.json({media:["Media is required"]})
        return
      }
      const insert_record = new insert("home_banners", req.body)
      var inserted_id = await insert_record.add()
      const query = new select
      try{
        var home_banner = await query.first("select * from home_banners where `id` = ?", [inserted_id])
        res.json(home_banner)
      }catch(ex){
        res.json({error:true,data:ex})
      }
    }
  }else{
    res.json({error:true,data:"You are not authorized"})
  }
})

module.exports = router