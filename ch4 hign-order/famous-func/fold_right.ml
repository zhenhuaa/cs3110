let rec sum = function
  | [] -> 0
  | h::t -> h + sum t

let rec concat = function
  | [] -> ""
  | h::t -> h ^ concat t


let rec sum' init  = function
  | [] -> init
  | h::t -> h + sum' init t


let rec concat' init = function
  | [] -> init
  | h::t -> h ^ concat' init t

let rec combine op init = function
  | [] -> init
  | h::t -> op h (combine op init t)


let sum = combine (+) 0
let concat = combine (^) 


let rec fold_right op lst init = match lst with
| [] -> init
| h::t -> op h (fold_right op t init)


let sum lst = fold_right (+) lst 0
let concat lst = fold_right (^) lst ""
