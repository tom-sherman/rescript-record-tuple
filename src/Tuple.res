type t<'a>

type array_like<'a> = Js.Array2.array_like<'a>

external castToArrayLike: t<'a> => array_like<'a> = "%identity"

@module("@bloomberg/record-tuple-polyfill") @scope("Tuple")
external from: array_like<'a> => t<'a> = "from"
@module("@bloomberg/record-tuple-polyfill") @scope("Tuple")
external fromMap: (array_like<'a>, @uncurry ('a => 'b)) => t<'b> = "from"

let fromArray = array => (Obj.magic((array: array<'a>)): Js.Array2.array_like<'a>)->from

@module("@bloomberg/record-tuple-polyfill") @scope("Tuple")
external isTuple: 'a => bool = "isTuple"

let toArray = tuple => tuple->castToArrayLike->Js.Array2.from

external unsafe_get: (t<'a>, int) => 'a = "%array_unsafe_get"
let get = (tuple, i) => (Obj.magic((tuple: t<'a>)): array<'a>)->Array.get(i)

@get external length: t<'a> => int = "length"

@send external pushed: (t<'a>, 'a) => t<'a> = "pushed"

@send external popped: (t<'a>, 'a) => t<'a> = "popped"

@send external shifted: (t<'a>, 'a) => t<'a> = "shifted"

@send external unshifted: (t<'a>, 'a) => t<'a> = "unshifted"

@send external concat: (t<'a>, t<'a>) => t<'a> = "concat"

@send external includes: (t<'a>, 'a) => bool = "includes"

@send external indexOf: (t<'a>, 'a) => int = "indexOf"

@send external lastIndexOf: (t<'a>, 'a) => int = "lastIndexOf"

@send external joinWith: (t<'a>, string) => string = "join"

@send external slice: (t<'a>, ~start: int, ~end_: int) => t<'a> = "slice"

@send @variadic
external splice: (t<'a>, ~pos: int, ~remove: int, ~add: array<'a>) => t<'a> = "splice"

@send external toString: t<'a> => string = "toString"

@send external sort: t<'a> => t<'a> = "sort"
@send external sortWith: (t<'a>, @uncurry ('a, 'a) => int) => t<'a> = "sort"

@send external every: (t<'a>, @uncurry ('a => bool)) => bool = "every"
@send external everyi: (t<'a>, @uncurry ('a, int) => bool) => bool = "every"

external filter: (t<'a>, @uncurry ('a => bool)) => t<'a> = "filter"
@send external filteri: (t<'a>, @uncurry ('a, int) => bool) => t<'a> = "filter"

@send @return({undefined_to_opt: undefined_to_opt})
external find: (t<'a>, @uncurry ('a => bool)) => option<'a> = "find"
@send @return({undefined_to_opt: undefined_to_opt})
external findi: (t<'a>, @uncurry ('a, int) => bool) => option<'a> = "find"

@send external findIndex: (t<'a>, @uncurry ('a => bool)) => int = "findIndex"
@send external findIndexi: (t<'a>, @uncurry ('a, int) => bool) => int = "findIndex"

@send external forEach: (t<'a>, @uncurry ('a => unit)) => unit = "forEach"
@send external forEachi: (t<'a>, @uncurry ('a, int) => unit) => unit = "forEach"

@send external map: (t<'a>, @uncurry ('a => 'b)) => t<'b> = "map"
@send external mapi: (t<'a>, @uncurry ('a, int) => 'b) => t<'b> = "map"

@send external reduce: (t<'a>, @uncurry ('b, 'a) => 'b, 'b) => 'b = "reduce"
@send external reducei: (t<'a>, @uncurry ('b, 'a, int) => 'b, 'b) => 'b = "reduce"

@send external reduceRight: (t<'a>, @uncurry ('b, 'a) => 'b, 'b) => 'b = "reduceRight"
@send external reduceRighti: (t<'a>, @uncurry ('b, 'a, int) => 'b, 'b) => 'b = "reduceRight"

@send external some: (t<'a>, @uncurry ('a => bool)) => bool = "some"
@send external somei: (t<'a>, @uncurry ('a, int) => bool) => bool = "some"
