(* add 1 to each element of list *)

let rec add1 = function
  | [] -> []
  | h::t -> (h+1)::(add1 t)


(* concatnate "3110" to each element of list *)
let rec concat3110 = function
  | [] -> []
  | h::t -> (h^"3110")::(concat3110 t)

(* [map f [x1; x2; ...; xn]] is [f x1; f x2; ...; f xn] *) 
let rec map f = function
  | [] -> []
  | h::t -> (f h)::(map f t)

let add_v2 = map (fun x -> x + 1)
let concat3110_v2 = map (fun x -> x ^ "3110")
