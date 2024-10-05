
(* The type of tokens. *)

type token = 
  | SUB
  | SETLABEL
  | RSQUARE
  | RET
  | PRINT
  | MUL
  | MOVE
  | LSQUARE
  | LOCAL of (int)
  | JNE
  | INT of (int)
  | GOTO
  | GLOBAL of (int)
  | FUN
  | FLOAT of (float)
  | EOF
  | COMMA
  | COLON
  | CALL
  | ATOM of (string)
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.t list option)
