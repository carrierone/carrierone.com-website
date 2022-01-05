const sessionsetup = require('../sessionsetup')
const select = require('../db/select.js')
const insert = require('../db/insert.js')
const update = require('../db/update.js')
const validator = require('../validator/index.js')
const router = sessionsetup.router
router.route('/testimonials').get(async (req, res) => {
    const query = new select
    try {
        let filter = '';
        if (!req.session.login) {
            filter = ' where is_active = 1'
        }
        var results = await query.get("select * from testimonials" + filter + " order by id desc")
        res.json(results)
    } catch (ex) {
        res.json({ error: true, data: ex })
    }
}).post(async (req, res) => {
    if (req.session.login === true) {
        const validate = new validator(req.body)
        validate.addrules('review', 'required')
        validate.addrules('name', 'required')
        const validation_result = validate.validate()
        if (!validate.isValid()) {
            res.status(400).json(validation_result);
        } else {
            const insert_record = new insert("testimonials", req.body)
            var inserted_id = await insert_record.add()
            const query = new select
            try {
                var home_banner = await query.first("select * from testimonials where `id` = ?", [inserted_id])
                res.json(home_banner)
            } catch (ex) {
                res.json({ error: true, data: ex })
            }
        }
    } else {
        res.json({ error: true, data: "You are not authorized" })
    }
})

router.route('/testimonials/:id').delete(async (req, res) => {
    if (req.session.login === true) {
        const query = new select
        try {
            query.get("DELETE from testimonials where id = " + req.params.id)
            res.json({ data: "Deleted" }).status(200)
        } catch (ex) {
            res.json({ error: true, data: ex })
        }
    } else {
        res.json({ error: true, data: "You are not authorized" })
    }
}).put(async (req, res) => {
    if (req.session.login === true) {
        const validate = new validator(req.body)
        validate.addrules('review', 'required')
        validate.addrules('name', 'required')
        const validation_result = validate.validate()
        if (!validate.isValid()) {
            res.status(400).json(validation_result);
        } else {
            const update_record = new update("testimonials", req.body, { id: req.params.id })
            await update_record.edit()
            const query = new select
            try {
                var home_banner = await query.first("select * from testimonials where `id` = ?", [req.params.id])
                res.json(home_banner)
            } catch (ex) {
                res.json({ error: true, data: ex })
            }
        }
    } else {
        res.json({ error: true, data: "You are not authorized" })
    }
})

module.exports = router