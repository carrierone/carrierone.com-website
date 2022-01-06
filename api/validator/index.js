module.exports = class validator {
    rules = {}
    errors = {}
    required_validation = require('./required')
    constructor(body){
        this.body = body
    }
    addrules(input, rule){
        if(!this.rules[input]){
            this.rules[input] = []
        }
        if(this.body[input]){
            this.rules[input].push(rule)
        }else{
            this.updateError({
                status: true,
                message: input+" is not in the request",
                input: input
            });
        }
    }
    validate(){
        for(let q in this.rules){
            for(let i = 0; i < this.rules.length; i++){
                if(this.rules[q][i]=='required'){
                    this.updateError(required_validation.validate(q), this.body)
                }
            }
        }
        let res = this.errors
        for(let q in this.errors){
            res[q] = this.errors[q].join(', ')
        }
        return res;
    }
    updateError(result){
        if(result.status==true){
            if(!this.errors[result.input]){
                this.errors[result.input] = []
            }
            this.errors[result.input].push(result.message)
        }
    }
    isValid(){
        return Object.keys(this.errors).length>0?false:true
    }
}
