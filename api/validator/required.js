module.exports = class required {
    validate(input, body){
        let result = {
            status: false,
            input: input,
            message: ''
        }
        if(!body[input]){
            result.status = true
            result.message = input+' is required'
        }
        return result
    }
}
