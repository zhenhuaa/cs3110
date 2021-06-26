type intlist = Nil | Cons of int * intlist

let lst3 = Cons (3, Nil)
let lst123 = Cons(1, Cons(2, lst3))


let rec sum (l:intlist):int =
  match l with
  | Nil -> 0
  | Cons(h, t) -> h + sum t


let rec length: intlist ->int = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length t


let empty: intlist -> bool = function
  | Nil -> true
  | Cons _ -> false


(* types may be mutually recursive if you use then and keyword *)
type node = {value: int; next: mylist} and mylist = Nil | Node of node

type fin_or_inf = Finite of int | Infinity

let f = function
  | 0 -> Infinity
  | 1 -> Finite 1
  | n -> Finite (-n)


(* Using polymorphic variants, we can rewrite f: *)

let f2 = function
  | 0 -> `Infinity
  | 1 -> `Finite 1
  | n -> `Finite (-n)


(* Build-in valriants *)
