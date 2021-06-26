let extract = function
  | Some i -> string_of_int i
  | None -> "";;


let rec list_max = function
  | [] -> None
  | h::t -> begin
    match list_max t with
     | None -> Some h
     | Some m -> Some (max h m)
  end
