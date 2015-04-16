//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
    if (input == null || input.trim() === '') {
        return 'Fine. Be that way!'
    } else if (input === input.toUpperCase() &&  input.isNumber() == false) {
        return 'Whoa, chill out!';
    } else if (input.charAt(input.length-1) === '?') {
        return 'Sure.'
    } else {
        return 'Whatever.'
    }
};

String.prototype.isNumber = function() {
    return /^\d+$/.test(this);
}

module.exports = Bob;
