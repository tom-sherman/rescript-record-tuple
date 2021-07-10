type t<'a> = 'a

@module("@bloomberg/record-tuple-polyfill")
external make: 'a => t<'a> = "Record"

external get: t<'a> => 'a = "%identity"
