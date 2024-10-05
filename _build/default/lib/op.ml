open Common

type t =
  [ `Move of mov
  | `Goto of string
  | `Add of add
  | `Fun of func
  | `Ret
  | `Data of data
  | `Call of call
  | `JmpEq of jmp_eq
  | `JmpNe of jmp_ne
  | `Print of reg_ref
  | `Mul of bin_op
  | `Sub of bin_op ]
[@@deriving show, eq]
