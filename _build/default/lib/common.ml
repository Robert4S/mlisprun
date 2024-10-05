open Core

type reg_ref = [ `Local of int | `Global of int ] [@@deriving show, eq]
type mov = { from : reg_ref; into : reg_ref } [@@deriving show, eq]
type data = { reg : reg_ref; value : int } [@@deriving show, eq]
type call = { name : string } [@@deriving show, eq]
type load = { into : reg_ref; alloc : int } [@@deriving show, eq]
type set = { alloc : int; reg : reg_ref } [@@deriving show, eq]
type add = { a : reg_ref; b : reg_ref; into : reg_ref } [@@deriving show, eq]
type func = { name : string; length : int } [@@deriving show, eq]
type 'a pairs = (string * 'a) list [@@deriving show, eq]
type jmp_eq = { r1 : reg_ref; r2 : reg_ref; label : string } [@@deriving show, eq]
type jmp_ne = { r1 : reg_ref; r2 : reg_ref; label : string } [@@deriving show, eq]
type bin_op = { r1 : reg_ref; r2 : reg_ref; into : reg_ref } [@@deriving show, eq]

module ST = Hashtbl.Make (String)

module StringTable = struct
  include ST

  let pp pp_val ppf tbl =
    let pairs =
      Hashtbl.keys tbl |> List.map ~f:(fun key -> (key, Hashtbl.find_exn tbl key))
    in
    Format.fprintf ppf "{";
    Format.fprintf ppf "%a" (pp_pairs pp_val) pairs;
    Format.fprintf ppf "}"

  let show pp_val tbl = Format.asprintf "%a" (pp pp_val) tbl
end

class virtual ['env, 'value] to_value =
  object
    method virtual to_value : 'env -> 'value
  end

module Register : sig
  type 'a t [@@deriving show]

  val mov : into:'a t -> from:'a t -> 'a
  val get : 'a t -> 'a
  val set : 'a t -> 'a -> unit
  val make : 'a -> 'a t
end = struct
  class ['env, 'value] reg (inner : 'value) =
    object
      inherit ['env, 'value] to_value
      val mutable inner = inner
      method get = inner
      method set v = inner <- v
      method to_value _ = inner
    end

  type b
  type 'a t = (b, 'a) reg

  (** Moves a value into a register and returns the previous value **)
  let mov ~(into : 'a t) ~(from : 'a t) =
    let curr = into#get in
    into#set from#get;
    curr

  let get x = x#get
  let set r v = r#set v
  let make i = new reg i
  let pp pp_val ppf reg = Format.fprintf ppf "Register ( %a )" pp_val reg#get
  let show pp_val reg = Format.asprintf "%a" (pp pp_val) reg
end
