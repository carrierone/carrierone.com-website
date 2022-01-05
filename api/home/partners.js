const sessionsetup = require('../sessionsetup')
const multer = require('multer');
var path = require('path')
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'assets/uploads/partners')
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + path.extname(file.originalname)) //Appending extension
    }
})
const upload = multer({ dest: 'assets/uploads/partners', storage: storage });
const select = require('../db/select.js')
const insert = require('../db/insert.js')
const update = require('../db/update.js')
const validator = require('../validator/index.js')
const router = sessionsetup.router
router.route('/partners').get(async (req, res) => {
    const query = new select
    try {
        let filter = '';
        if (!req.session.login) {
            filter = ' where is_active = 1'
        }
        var results = await query.get("select * from partners" + filter + " order by id desc")
        res.json(results)
    } catch (ex) {
        res.json({ error: true, data: ex })
    }
}).post(upload.single('media'), async (req, res) => {
    if (req.session.login === true) {
        if (!req.file) {
            res.json({ media: ["File is required"] })
            return
        }
        req.body.image = 'uploads/partners/' + req.file.filename;
        const insert_record = new insert("partners", req.body)
        var inserted_id = await insert_record.add()
        const query = new select
        try {
            var home_banner = await query.first("select * from partners where `id` = ?", [inserted_id])
            res.json(home_banner)
        } catch (ex) {
            res.json({ error: true, data: ex })
        }
    } else {
        res.json({ error: true, data: "You are not authorized" })
    }
})

router.route('/partners/:id').delete(async (req, res) => {
    if (req.session.login === true) {
        const query = new select
        try {
            query.get("DELETE from partners where id = " + req.params.id)
            res.json({ data: "Deleted" }).status(200)
        } catch (ex) {
            res.json({ error: true, data: ex })
        }
    } else {
        res.json({ error: true, data: "You are not authorized" })
    }
}).put(upload.single('media'), async (req, res) => {
    if (req.session.login === true) {
        if (req.file) {
            req.body.image = 'uploads/partners/' + req.file.filename;
        }
        const update_record = new update("partners", req.body, { id: req.params.id })
        await update_record.edit()
        const query = new select
        try {
            var home_banner = await query.first("select * from partners where `id` = ?", [req.params.id])
            res.json(home_banner)
        } catch (ex) {
            res.json({ error: true, data: ex })
        }
    } else {
        res.json({ error: true, data: "You are not authorized" })
    }
})

module.exports = router