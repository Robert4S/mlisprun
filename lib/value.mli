type t = Int of int | Float of float | Function of int [@@deriving show, eq]

val (=) : t -> t -> bool
val mul : t -> t -> t
val sub : t -> t -> t
