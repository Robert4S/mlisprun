
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | SUB
    | SETLABEL
    | RSQUARE
    | RET
    | PRINT
    | MUL
    | MOVE
    | LSQUARE
    | LOCAL of (
# 4 "lib/parser.mly"
       (int)
# 23 "lib/parser.ml"
  )
    | JNE
    | INT of (
# 1 "lib/parser.mly"
       (int)
# 29 "lib/parser.ml"
  )
    | GOTO
    | GLOBAL of (
# 5 "lib/parser.mly"
       (int)
# 35 "lib/parser.ml"
  )
    | FUN
    | FLOAT of (
# 3 "lib/parser.mly"
       (float)
# 41 "lib/parser.ml"
  )
    | EOF
    | COMMA
    | COLON
    | CALL
    | ATOM of (
# 2 "lib/parser.mly"
       (string)
# 50 "lib/parser.ml"
  )
    | ADD
  
end

include MenhirBasics

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_prog) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: prog. *)

  | MenhirState01 : (('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_state
    (** State 01.
        Stack shape : LSQUARE.
        Start symbol: prog. *)

  | MenhirState02 : ((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_SUB, _menhir_box_prog) _menhir_state
    (** State 02.
        Stack shape : LSQUARE SUB.
        Start symbol: prog. *)

  | MenhirState06 : (((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_SUB, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_state
    (** State 06.
        Stack shape : LSQUARE SUB reg.
        Start symbol: prog. *)

  | MenhirState08 : ((((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_SUB, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_state
    (** State 08.
        Stack shape : LSQUARE SUB reg reg.
        Start symbol: prog. *)

  | MenhirState13 : ((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_PRINT, _menhir_box_prog) _menhir_state
    (** State 13.
        Stack shape : LSQUARE PRINT.
        Start symbol: prog. *)

  | MenhirState15 : ((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MUL, _menhir_box_prog) _menhir_state
    (** State 15.
        Stack shape : LSQUARE MUL.
        Start symbol: prog. *)

  | MenhirState17 : (((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MUL, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_state
    (** State 17.
        Stack shape : LSQUARE MUL reg.
        Start symbol: prog. *)

  | MenhirState19 : ((((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MUL, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_state
    (** State 19.
        Stack shape : LSQUARE MUL reg reg.
        Start symbol: prog. *)

  | MenhirState21 : ((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MOVE, _menhir_box_prog) _menhir_state
    (** State 21.
        Stack shape : LSQUARE MOVE.
        Start symbol: prog. *)

  | MenhirState23 : (((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MOVE, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_state
    (** State 23.
        Stack shape : LSQUARE MOVE reg.
        Start symbol: prog. *)

  | MenhirState25 : ((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_JNE, _menhir_box_prog) _menhir_state
    (** State 25.
        Stack shape : LSQUARE JNE.
        Start symbol: prog. *)

  | MenhirState27 : (((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_JNE, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_state
    (** State 27.
        Stack shape : LSQUARE JNE reg.
        Start symbol: prog. *)

  | MenhirState39 : ((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_ADD, _menhir_box_prog) _menhir_state
    (** State 39.
        Stack shape : LSQUARE ADD.
        Start symbol: prog. *)

  | MenhirState41 : (((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_ADD, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_state
    (** State 41.
        Stack shape : LSQUARE ADD reg.
        Start symbol: prog. *)

  | MenhirState43 : ((((('s, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_ADD, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_state
    (** State 43.
        Stack shape : LSQUARE ADD reg reg.
        Start symbol: prog. *)

  | MenhirState54 : (('s, _menhir_box_prog) _menhir_cell1_form, _menhir_box_prog) _menhir_state
    (** State 54.
        Stack shape : form.
        Start symbol: prog. *)


and ('s, 'r) _menhir_cell1_form = 
  | MenhirCell1_form of 's * ('s, 'r) _menhir_state * (Ast.t)

and ('s, 'r) _menhir_cell1_reg = 
  | MenhirCell1_reg of 's * ('s, 'r) _menhir_state * (Common.reg_ref)

and ('s, 'r) _menhir_cell1_ADD = 
  | MenhirCell1_ADD of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_JNE = 
  | MenhirCell1_JNE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LSQUARE = 
  | MenhirCell1_LSQUARE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MOVE = 
  | MenhirCell1_MOVE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MUL = 
  | MenhirCell1_MUL of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PRINT = 
  | MenhirCell1_PRINT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SUB = 
  | MenhirCell1_SUB of 's * ('s, 'r) _menhir_state

and _menhir_box_prog = 
  | MenhirBox_prog of (Ast.t list option) [@@unboxed]

let _menhir_action_01 =
  fun o ->
    (
# 35 "lib/parser.mly"
                             (o)
# 180 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_02 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 188 "lib/parser.ml"
     : (Ast.t list))

let _menhir_action_03 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 196 "lib/parser.ml"
     : (Ast.t list))

let _menhir_action_04 =
  fun from into ->
    (
# 39 "lib/parser.mly"
                                        (`Move Common.{from; into})
# 204 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_05 =
  fun () ->
    (
# 40 "lib/parser.mly"
        (`Ret)
# 212 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_06 =
  fun reg value ->
    (
# 41 "lib/parser.mly"
                                  (`Data Common.{reg; value})
# 220 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_07 =
  fun a b into ->
    (
# 42 "lib/parser.mly"
                                                    (`Add Common.{a; b; into})
# 228 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_08 =
  fun length name ->
    (
# 43 "lib/parser.mly"
                                           (`Fun Common.{name; length})
# 236 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_09 =
  fun name ->
    (
# 44 "lib/parser.mly"
                      (`Call Common.{name})
# 244 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_10 =
  fun label ->
    (
# 45 "lib/parser.mly"
                       (`Goto label)
# 252 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_11 =
  fun reg ->
    (
# 46 "lib/parser.mly"
                     (`Print reg)
# 260 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_12 =
  fun name ->
    (
# 47 "lib/parser.mly"
                          (`SetLabel name)
# 268 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_13 =
  fun label r1 r2 ->
    (
# 48 "lib/parser.mly"
                                                        (`JmpNe Common.{r1; r2; label})
# 276 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_14 =
  fun into r1 r2 ->
    (
# 49 "lib/parser.mly"
                                                      (`Mul Common.{r1; r2; into})
# 284 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_15 =
  fun into r1 r2 ->
    (
# 50 "lib/parser.mly"
                                                      (`Sub Common.{r1; r2; into})
# 292 "lib/parser.ml"
     : (Ast.t))

let _menhir_action_16 =
  fun () ->
    (
# 29 "lib/parser.mly"
        (None)
# 300 "lib/parser.ml"
     : (Ast.t list option))

let _menhir_action_17 =
  fun es ->
    (
# 30 "lib/parser.mly"
                         (Some (es))
# 308 "lib/parser.ml"
     : (Ast.t list option))

let _menhir_action_18 =
  fun i ->
    (
# 54 "lib/parser.mly"
               (`Global i)
# 316 "lib/parser.ml"
     : (Common.reg_ref))

let _menhir_action_19 =
  fun i ->
    (
# 55 "lib/parser.mly"
              (`Local i)
# 324 "lib/parser.ml"
     : (Common.reg_ref))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ADD ->
        "ADD"
    | ATOM _ ->
        "ATOM"
    | CALL ->
        "CALL"
    | COLON ->
        "COLON"
    | COMMA ->
        "COMMA"
    | EOF ->
        "EOF"
    | FLOAT _ ->
        "FLOAT"
    | FUN ->
        "FUN"
    | GLOBAL _ ->
        "GLOBAL"
    | GOTO ->
        "GOTO"
    | INT _ ->
        "INT"
    | JNE ->
        "JNE"
    | LOCAL _ ->
        "LOCAL"
    | LSQUARE ->
        "LSQUARE"
    | MOVE ->
        "MOVE"
    | MUL ->
        "MUL"
    | PRINT ->
        "PRINT"
    | RET ->
        "RET"
    | RSQUARE ->
        "RSQUARE"
    | SETLABEL ->
        "SETLABEL"
    | SUB ->
        "SUB"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_goto_prog : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      MenhirBox_prog _v
  
  let _menhir_run_52 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let es = _v in
      let _v = _menhir_action_17 es in
      _menhir_goto_prog _menhir_stack _v
  
  let rec _menhir_run_55 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_form -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let MenhirCell1_form (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_03 x xs in
      _menhir_goto_list_form_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_form_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState54 ->
          _menhir_run_55 _menhir_stack _v
      | MenhirState00 ->
          _menhir_run_52 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LSQUARE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_SUB (_menhir_stack, MenhirState01) in
          let _menhir_s = MenhirState02 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | SETLABEL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ATOM _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let name = _v in
              let _v = _menhir_action_12 name in
              _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | RET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PRINT ->
          let _menhir_stack = MenhirCell1_PRINT (_menhir_stack, MenhirState01) in
          let _menhir_s = MenhirState13 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | MUL ->
          let _menhir_stack = MenhirCell1_MUL (_menhir_stack, MenhirState01) in
          let _menhir_s = MenhirState15 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | MOVE ->
          let _menhir_stack = MenhirCell1_MOVE (_menhir_stack, MenhirState01) in
          let _menhir_s = MenhirState21 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | LOCAL _v ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState01
      | JNE ->
          let _menhir_stack = MenhirCell1_JNE (_menhir_stack, MenhirState01) in
          let _menhir_s = MenhirState25 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | GOTO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ATOM _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let label = _v in
              let _v = _menhir_action_10 label in
              _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | GLOBAL _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState01
      | FUN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ATOM _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | INT _v_0 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (name, length) = (_v, _v_0) in
                      let _v = _menhir_action_08 length name in
                      _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | CALL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ATOM _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let name = _v in
              let _v = _menhir_action_09 name in
              _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | ADD ->
          let _menhir_stack = MenhirCell1_ADD (_menhir_stack, MenhirState01) in
          let _menhir_s = MenhirState39 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_19 i in
      _menhir_goto_reg _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_reg : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState01 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState43 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState41 ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState39 ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState27 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState25 ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState23 ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState21 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState19 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState17 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState15 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState13 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState08 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState06 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_45 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | COLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (reg, value) = (_v, _v_0) in
              let _v = _menhir_action_06 reg value in
              _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_op : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RSQUARE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LSQUARE (_menhir_stack, _menhir_s) = _menhir_stack in
          let o = _v in
          let _v = _menhir_action_01 o in
          let _menhir_stack = MenhirCell1_form (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | LSQUARE ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | EOF ->
              let _v_0 = _menhir_action_02 () in
              _menhir_run_55 _menhir_stack _v_0
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_44 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_ADD, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_cell1_reg -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_reg (_menhir_stack, _, b) = _menhir_stack in
      let MenhirCell1_reg (_menhir_stack, _, a) = _menhir_stack in
      let MenhirCell1_ADD (_menhir_stack, _) = _menhir_stack in
      let into = _v in
      let _v = _menhir_action_07 a b into in
      _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_42 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_ADD, _menhir_box_prog) _menhir_cell1_reg as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reg (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_s = MenhirState43 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_18 i in
      _menhir_goto_reg _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_40 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_ADD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reg (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_s = MenhirState41 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_28 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_JNE, _menhir_box_prog) _menhir_cell1_reg -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ATOM _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_reg (_menhir_stack, _, r1) = _menhir_stack in
              let MenhirCell1_JNE (_menhir_stack, _) = _menhir_stack in
              let (label, r2) = (_v_0, _v) in
              let _v = _menhir_action_13 label r1 r2 in
              _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_26 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_JNE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reg (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_s = MenhirState27 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_24 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MOVE, _menhir_box_prog) _menhir_cell1_reg -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_reg (_menhir_stack, _, from) = _menhir_stack in
      let MenhirCell1_MOVE (_menhir_stack, _) = _menhir_stack in
      let into = _v in
      let _v = _menhir_action_04 from into in
      _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_22 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MOVE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reg (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_s = MenhirState23 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_20 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MUL, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_cell1_reg -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_reg (_menhir_stack, _, r2) = _menhir_stack in
      let MenhirCell1_reg (_menhir_stack, _, r1) = _menhir_stack in
      let MenhirCell1_MUL (_menhir_stack, _) = _menhir_stack in
      let into = _v in
      let _v = _menhir_action_14 into r1 r2 in
      _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_18 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MUL, _menhir_box_prog) _menhir_cell1_reg as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reg (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_s = MenhirState19 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_16 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_MUL as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reg (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_s = MenhirState17 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_14 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_PRINT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_PRINT (_menhir_stack, _) = _menhir_stack in
      let reg = _v in
      let _v = _menhir_action_11 reg in
      _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_09 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_SUB, _menhir_box_prog) _menhir_cell1_reg, _menhir_box_prog) _menhir_cell1_reg -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_reg (_menhir_stack, _, r2) = _menhir_stack in
      let MenhirCell1_reg (_menhir_stack, _, r1) = _menhir_stack in
      let MenhirCell1_SUB (_menhir_stack, _) = _menhir_stack in
      let into = _v in
      let _v = _menhir_action_15 into r1 r2 in
      _menhir_goto_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_07 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_SUB, _menhir_box_prog) _menhir_cell1_reg as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reg (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_s = MenhirState08 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_LSQUARE, _menhir_box_prog) _menhir_cell1_SUB as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reg (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_s = MenhirState06 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LOCAL _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GLOBAL _v ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LSQUARE ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | EOF ->
          let _v = _menhir_action_16 () in
          _menhir_goto_prog _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
