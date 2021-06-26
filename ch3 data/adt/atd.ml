open Float

type day = Sun | Mon | Tue | Wed | Thu | Fri | Sat

type ptype = TNormal | TFire | TWater

type peff = ENormal | ENotVery | ESuper

type point = float * float

type shape =
  | Point of point
  | Circle of point * float
  | Rect of point * point


let area = function
  | Point _ -> 0.0
  | Circle (_,r) -> pi *. (r ** 2.0)
  | Rect ((x1,y1),(x2,y2)) ->
      let w = x2 -. x1 in
      let h = y2 -. y1 in
      w *. h

let center = function
  | Point p -> p
  | Circle (p,_) -> p
  | Rect ((x1,y1),(x2,y2)) ->
      ((x2 -. x1) /. 2.0,
       (y2 -. y1) /. 2.0)


type string_or_int =
  | String of string
  | Int of int

type string_or_int_list = string_or_int list

let rec sum: string_or_int list -> int = function
  | [] -> 0
  | (String s)::t -> int_of_string s + sum t
  | (Int i)::t -> i + sum t

let three = sum [String "1"; Int 2]
