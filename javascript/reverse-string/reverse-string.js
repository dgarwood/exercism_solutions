'use strict'

var ReverseString = function (string) {
  if (string.length === 0) {
    return string
  }

  string = string.split('')
  string = string.reverse()
  return string.join('')
}

module.exports = ReverseString
