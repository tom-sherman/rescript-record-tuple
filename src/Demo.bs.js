// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Tuple = require("./Tuple.bs.js");

var x = Tuple.fromArray([
      1,
      2,
      3
    ]);

var y = Tuple.fromArray([
      1,
      2,
      3
    ]);

function addOne(n) {
  return n + 1 | 0;
}

console.log(x.map(addOne) === y.map(addOne));

exports.x = x;
exports.y = y;
exports.addOne = addOne;
/* x Not a pure module */