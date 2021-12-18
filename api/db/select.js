const connection = require('./connection')
module.exports = class select {
    get(query, params){
        return new Promise(function(resolve, reject) {
            connection.query(query, params, function (error, results, fields) {
                if (error) {
                    return reject(error);
                }
                resolve(results);
            });
        });
    }
    first(query, params){
        return new Promise(function(resolve, reject) {
            connection.query(query, params, function (error, results, fields) {
                if (error) {
                    return reject(error);
                }
                resolve(results[0]);
            });
        });
    }
}
