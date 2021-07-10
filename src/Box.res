type t<'a>

@module("@bloomberg/record-tuple-polyfill")
external make: 'a => t<'a> = "Box"

@module("@bloomberg/record-tuple-polyfill") @scope("Box")
external containsBox: 'a => bool = "containsBox"

@send external unbox: t<'a> => 'a = "unbox"
