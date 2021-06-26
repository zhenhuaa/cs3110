type ptype = TNormal | TFire | TWater

type mon = {name: string; hp: int; ptype: ptype}


let get_hp m = m.hp

let thrd (_, _, z) = z
