const connection = require('./connection')
module.exports = class insert {
    constructor(table, object){
        this.table = table
        this.object = object
        this.query = ''
    }
    generateQuery(){
        this.query = 'INSERT INTO '+this.table+' SET ?'
    }
    add(){
        this.generateQuery()
        const objects = this.object
        const query = this.query
        return new Promise(function(resolve, reject) {
            connection.query(query, objects, function (error, results, fields) {
                if (error) {
                    return reject(error);
                }
                resolve(results.insertId);
            });
        });
    }
}
