open Core
open Common

type t = {
  mutable pc : int;
  code : Op.t array;
  stack : Table.t;
  registers : Value.t Register.t array;
  labels : int StringTable.t;
  mutable ret_addr : int;
  functions : int StringTable.t;
}
[@@deriving show]

let make
    ?(pc = -1)
    ?(stack = Table.make ())
    ?(code = [||])
    ?(registers = Array.init 20 ~f:(fun _ -> Register.make (Value.Int 0)))
    ?(ret_addr = -1)
    ?(labels = StringTable.create ())
    ?(functions = StringTable.create ())
    () =
  let ret_addr = if ret_addr = -1 then Array.length code else ret_addr in
  { pc; stack; registers; code; ret_addr; labels; functions }

let incr e = e.pc <- e.pc + 1
let with_code env code = { env with code; ret_addr = Array.length code }

let go_ret e =
  (*   Table.pop_frame e.stack |> ignore; *)
  e.pc <- e.ret_addr

let which env reg =
  let open Option in
  match reg with
  | `Local x -> Table.top env.stack >>= fun r -> Some r.registers.(x)
  | `Global x -> Some env.registers.(x)

let set e reg v =
  match which e reg with
  | Some r -> Register.set r v
  | None -> assert false

let move e from into =
  match
    let open Option.Let_syntax in
    let which = which e in
    let%bind from = which from in
    let%bind into = which into in
    return @@ Register.mov ~into ~from
  with
  | None -> assert false
  | Some v -> v

let ret e = e.registers.(0)
let set_label e ?(pos = e.pc) (s : string) = Hashtbl.set e.labels ~key:s ~data:pos

let goto_label e label =
  match Hashtbl.find e.labels label with
  | Some addr -> e.pc <- addr
  | None -> assert false

let call e name =
  Table.push_frame e.stack ~length:10;
  let f = Hashtbl.find_exn e.functions name in
  e.ret_addr <- e.pc;
  e.pc <- f

let add_function e name = Hashtbl.set e.functions ~key:name ~data:e.pc

type exn += OutOfBounds of { env : t; reg : reg_ref }

let exn_printer = function
  | OutOfBounds { env; reg } ->
      Some
        (Format.asprintf "Out of bounds: Env=%s,\n reg=%s" (show env)
           (show_reg_ref reg))
  | _ -> None

let get e r =
  match which e r with
  | Some r -> Register.get r
  | None -> raise @@ OutOfBounds { env = e; reg = r }
