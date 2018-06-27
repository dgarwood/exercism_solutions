'use strict'

var DnaTranscriber = function () {
}

DnaTranscriber.prototype.toRna = function (strand) {
  if (strand.match(/[^GCAT]/g)) {
    throw new Error("Invalid input")
  }

  strand = strand.replace(/G/g, "c")
  strand = strand.replace(/C/g, "g")
  strand = strand.replace(/A/g, "u")
  strand = strand.replace(/T/g, "a")

  return strand.toUpperCase()
}

module.exports = DnaTranscriber
