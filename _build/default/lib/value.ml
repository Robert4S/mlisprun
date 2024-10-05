type t = Int of int | Float of float | Function of int [@@deriving show, eq]

let ( = ) = equal

let mul a b =
  match (a, b) with
  | Int i, Int b -> Int (i + b)
  | _ -> assert false

let sub a b =
  match (a, b) with
  | Int i, Int b -> Int (i - b)
  | _ -> assert false
