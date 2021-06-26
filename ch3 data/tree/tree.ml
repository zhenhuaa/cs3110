type 'a tree =
  | Leaf
  | Node of 'a * 'a tree * 'a tree


 let t =
  Node(4,
    Node(2,
      Node(1,Leaf,Leaf),
      Node(3,Leaf,Leaf)
    ),
    Node(5,
      Node(6,Leaf,Leaf),
      Node(7,Leaf,Leaf)
    )
  );;


let rec size = function
  | Leaf -> 0
  | Node (_,l,r) -> 1 + size l + size r



  (* Representation with Records *)

type 'a tree2 = | Leaf | Node of 'a node and 'a node = {
  value: 'a;
  left: 'a tree2;
  right: 'a tree2
}

let t =
  Node {
    value = 2;
    left  = Node {value=1; left=Leaf; right=Leaf};
    right = Node {value=3; left=Leaf; right=Leaf}
  }


let rec mem x = function
  | Leaf -> false
  | Node {value; left; right} -> value = x || mem x left || mem x right


let rec preorder = function
  | Leaf -> []
  | Node {value; left; right} -> [value] @ preorder left @ preorder right


let rec pre_acc acc = function
  | Leaf -> acc
  | Node {value; left; right} -> value :: (pre_acc (pre_acc acc right) left)

let preorder_lin t =
  pre_acc [] t
