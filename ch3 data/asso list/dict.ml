let d = [ ("rectangle", 4); ("triangle", 3); ("dodecagon", 12) ]

let rec lookup k = function
  | [] -> None
  | (k', v)::t -> if k = k' then Some v else lookup k t
