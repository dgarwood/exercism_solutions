//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Year = function (input) {
  year = input
}

Year.prototype.isLeap = function () {
  return year % 100 === 0 ? year % 400 === 0 : year % 4 === 0
}

module.exports = Year
