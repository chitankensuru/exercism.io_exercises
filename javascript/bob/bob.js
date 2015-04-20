//Iteration 2
// Move out validations to their own functions

var Bob = function() {};

Bob.prototype.hey = function (input) {
    if (this.isSilent(input)) {
        return 'Fine. Be that way!'
    } else if (this.isShouting(input)) {
        return 'Whoa, chill out!';
    } else if (this.isQuestion(input)) {
        return 'Sure.'
    } else {
        return 'Whatever.'
    }
};

Bob.prototype.isSilent = function (input){
    return (input == null || input.trim() === '')
}

Bob.prototype.isShouting = function (input) {
    return (input === input.toUpperCase() &&  (/[a-zA-Z]/.test(input)))
}

Bob.prototype.isQuestion = function (input) {
    return (input.charAt(input.length-1) === '?')
}

String.prototype.isNumber = function() {
    return /^\d+$/.test(this);
}

module.exports = Bob;
