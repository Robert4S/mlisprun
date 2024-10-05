type t = [ `SetLabel of string | Op.t ]

let resolve env idx (op : [< t ]) =
  match op with
  | `SetLabel n ->
      Env.set_label env ~pos:(idx - 1) n;
      None
  | #Op.t as other ->
      let other : Op.t = (other :> Op.t) in
      Some other
