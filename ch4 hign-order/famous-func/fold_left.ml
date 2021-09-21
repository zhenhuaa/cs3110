let rec fold_left op acc = function
  | [] -> acc
  | h :: t -> fold_left op (op acc h) t



let rec sum' acc = function
  | [] -> acc
  | h:: t -> sum' (acc +h) t


let sum = List.fold_left (+) 0
let concat = List.fold_left (^) ""
