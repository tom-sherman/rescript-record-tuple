let x = Tuple.fromArray([1, 2, 3])
let y = Tuple.fromArray([1, 2, 3])

let addOne = n => n + 1

Js.log(x->Tuple.map(addOne) === y->Tuple.map(addOne))
