const sessionsetup = require('../sessionsetup')
const select = require('../db/select.js')
const insert = require('../db/insert.js')
const update = require('../db/update.js')
const validator = require('../validator/index.js')
const router = sessionsetup.router
router.route('/config').get(async (req, res) => {
    const query = new select
    try {
        var results = await query.get("select * from m_flag where is_config=1")
        res.json(results).status(200)
    } catch (ex) {
        res.json({ error: true, data: ex })
    }
})
router.route('/config-keyval').get(async (req, res) => {
    const query = new select
    try {
        var results = await query.get("select * from m_flag where is_config=1")
        let keyDataSet = {};
        for (let q = 0; q < results.length; q++) {
            results[q]
            keyDataSet[results[q].flag_type] = (
                results[q].flag_additionalText != '' ?
                    (results[q].flag_value != results[q].flag_additionalText ? results[q].flag_additionalText : results[q].flag_value)
                    : results[q].flag_value)
        }
        keyDataSet['YEAR'] = new Date().getFullYear()
        res.json(keyDataSet).status(200)
    } catch (ex) {
        res.json({ error: true, data: ex })
    }
})
router.route('/config-content').get(async (req, res) => {
    const query = new select
    try {
        var results = await query.get("select * from m_flag where is_editor=1")
        let keyDataSet = {};
        for (let q = 0; q < results.length; q++) {
            results[q]
            keyDataSet[results[q].flag_type] = (
                results[q].flag_additionalText != '' ?
                    (results[q].flag_value != results[q].flag_additionalText ? results[q].flag_additionalText : results[q].flag_value)
                    : results[q].flag_value)
        }
        res.json(keyDataSet).status(200)
    } catch (ex) {
        res.json({ error: true, data: ex })
    }
}).post(async (req, res) => {
    // req.body.key
    // req.body.data
    if (req.session.login === true) {
        const validate = new validator(req.body)
        validate.addrules('key', 'required')
        validate.addrules('data', 'required')
        const validation_result = validate.validate()
        if (!validate.isValid()) {
            res.status(400).json(validation_result);
        } else {
            const query = new select
            try {
                query.get("DELETE from m_flag where flag_type = '" + req.body.key + "' and is_editor=1")
                const insert_record = new insert("m_flag", {
                    flag_type: req.body.key,
                    flag_value: req.body.data,
                    flag_additionalText: req.body.data,
                    is_editor: 1,
                    flag_show_text: req.body.key,
                    is_config: '0',
                    is_deleted: 0,
                    is_featureD: 0,
                    user_id: 0,
                    has_image:'0',
                    is_active: '1'
                })
                var inserted_id = await insert_record.add()
                var content = await query.first("select * from m_flag where `id` = ?", [inserted_id])
                res.json(content)
            } catch (ex) {
                res.json({ error: true, data: ex })
            }
        }
    } else {
        res.json({ error: true, data: "You are not authorized" })
    }
})
router.route('/config/:id').get(async (req, res) => {
    const query = new select
    try {
        var results = await query.first("select * from m_flag where `is_config` = 1 and `id` = ?", [req.params.id])
        res.json(results).status(200)
    } catch (ex) {
        res.json({ error: true, data: ex })
    }
})
module.exports = router