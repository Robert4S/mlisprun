open Mlisprun

let () =
  Printexc.register_printer Env.exn_printer;
  let _prog =
    "[FUN hello, 2] [ADD x0, x1, x0] [RET] [x0 : 2] [x1 : 3] [CALL hello]"
  in
  let prog =
    "[FUN fact, 11]\n\
     [MOV x0, y0]\n\
     [y1 : 0]\n\
     [JNE y0, y1, recur]\n\
     [x0 : 1]\n\
     [RET]\n\
     [SETLABEL recur]\n\
     [y1 : 1]\n\
     [SUB y0, y1, x0]\n\
     [PRINT x0]\n\
     [CALL fact]\n\
     [MUL y0, x0, x0]\n\
     [RET]\n\
     [x0 : 2]\n\
     [CALL fact]"
  in
  let env = Parse.(parse prog |> resolve) in
  let x = Eval.eval env in
  Fmt.pr "%a\n" Value.pp x
