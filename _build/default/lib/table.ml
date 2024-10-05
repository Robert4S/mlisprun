open Core
open Common

type frame = { registers : Value.t Register.t array } [@@deriving show]
type t = { mutable frames : frame list } [@@deriving show]

module Option = struct
  include Option

  let or_else v ~f =
    match v with
    | Some x -> Some x
    | None -> f ()
end

let make_frame ~length () =
  { registers = Array.init length ~f:(fun _ -> Register.make (Value.Int 0)) }

let make ?(frame = make_frame ~length:20 ()) () = { frames = [ frame ] }

let get stack regname =
  match stack with
  | [] -> None
  | x :: _ -> Some (Register.get x.registers.(regname))

let set { frames; _ } regname data =
  match frames with
  | [] -> assert false
  | x :: _ -> Register.set x.registers.(regname) data

let push_frame x ~length = x.frames <- make_frame ~length () :: x.frames

let top { frames } =
  match frames with
  | x :: _ -> Some x
  | [] -> None

let pop_frame table =
  match table.frames with
  | x :: xs ->
      table.frames <- xs;
      x
  | [] -> assert false
