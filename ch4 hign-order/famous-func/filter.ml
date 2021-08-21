let even n = n mod 2 = 0
let odd n = n mod 2 <> 0

let rec evens = function
  | [] -> []
  | h::t -> if even h then h::(evens t) else evens t

let rec odds = function
  | [] -> []
  | h::t -> if odd h then h::(odds t) else odds t


let rec filter f = function
  | [] -> []
  | h::t -> if f h then h::(filter f t) else filter f t

let evens_v2 = filter even
let odds_v2 =  filter odd
