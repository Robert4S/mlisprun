open Core
open Common

let unwrap = function
  | None -> assert false
  | Some x -> x

let skip_until env predicate =
  let rec loop () =
    if predicate Env.(env.code.(env.pc)) then
      let _ = Env.incr env in
      ()
    else
      let _ = Env.incr env in
      loop ()
  in
  loop ()

let eval env =
  let ( + ) a b =
    match
      ( Env.which env a |> unwrap |> Register.get,
        Env.which env b |> unwrap |> Register.get )
    with
    | Value.Int i, Value.Int i2 -> Value.Int (i + i2)
    | Value.Float f, Value.Float f2 -> Value.Float (f +. f2)
    | _ -> assert false
  in
  let rec loop () =
    Env.incr env;
    (*     Format.printf "\n\nState:\n%s\n" @@ Env.show env; *)
    if env.pc >= Array.length env.code then ()
    else
      match env.code.(env.pc) with
      | `Move { from; into } ->
          Env.move env from into |> ignore;
          loop ()
      | `Ret ->
          Env.go_ret env;
          loop ()
      | `Goto label ->
          Env.goto_label env label;
          loop ()
      | `Add { a; b; into } ->
          Env.set env into (a + b);
          loop ()
      | `Fun { name; length } ->
          Env.add_function env name;
          env.pc <- Int.(env.pc + length);
          loop ()
      | `Data { reg; value } ->
          Env.set env reg (Value.Int value);
          loop ()
      | `Call { name } ->
          Env.call env name;
          loop ()
      | `JmpEq { r1; r2; label } ->
          if Value.equal (Env.get env r1) (Env.get env r2) then
            Env.goto_label env label
          else ();
          loop ()
      | `JmpNe { r1; r2; label } ->
          if not @@ Value.equal (Env.get env r1) (Env.get env r2) then
            Env.goto_label env label
          else ();
          loop ()
      | `Print r ->
          print_endline @@ Value.show @@ Env.get env r;
          print_endline @@ Env.show @@ env;
          loop ()
      | `Mul { r1; r2; into } ->
          let r1 = Env.get env r1 in
          let r2 = Env.get env r2 in
          let res = Value.mul r1 r2 in
          Env.set env into res;
          loop ()
      | `Sub { r1; r2; into } ->
          let r1 = Env.get env r1 in
          let r2 = Env.get env r2 in
          let res = Value.sub r1 r2 in
          Env.set env into res;
          loop ()
  in

  loop ();
  Env.ret env |> Register.get
