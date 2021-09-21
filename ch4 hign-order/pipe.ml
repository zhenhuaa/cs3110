let square x = x * x

let sum = List.fold_left (+) 0

let (--) i j = 
    let rec aux n acc =
      if n < i then acc else aux (n-1) (n :: acc)
    in aux j [] ;;


let sum_sq n =
  0--n
  |> List.map square
  |> sum
