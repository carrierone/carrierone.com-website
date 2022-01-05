const connection = require('./connection')
module.exports = class update {
    constructor(table, object, where={}){
        this.table = table
        this.object = object
        this.query = ''
        this.where = where
        this.clauseValues = []
    }
    generateQuery(){
        this.query = 'UPDATE '+this.table+' SET '
        let objLength = Object.keys(this.object).length
        let loopLength = 0
        for(let q in this.object){
            loopLength++
            this.query+=q+'=?'+(objLength==loopLength?'':',')
            this.clauseValues.push(this.object[q])
        }
        this.query+=' WHERE '
        objLength = Object.keys(this.where).length
        loopLength=0
        for(let j in this.where){
            loopLength++
            this.query+=j+"='"+this.where[j]+"'"+(objLength==loopLength?'':' AND ')
            this.clauseValues.push(this.where[j])
        }
    }
    edit(){
        this.generateQuery()
        const objects = this.clauseValues
        const query = this.query
        return new Promise(function(resolve, reject) {
            connection.query(query, objects, function (error, results, fields) {
                if (error) {
                    return reject(error);
                }
                resolve(results);
            });
        });
    }
}
