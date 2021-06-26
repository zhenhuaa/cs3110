## Function

Syntax. The syntax for function definitions:
`
let rec f x1 x2 ... xn = e
`

The f is a metavariable indicating an identifier being used as a function name ** ust begin with a lowercase letter 
The names x1 through xn are metavariables indicating argument identifiers

### Anonymous Functions

In the lambda calculus, fun x -> e would be written \lambda x . eλx.e

`
fun x1 ... xn -> e
`

#### Function Application

Pipeline

`
5 |> inc |> square
`

#### Polymorphic functions
`
# let id x = x;;
id : 'a -> 'a = <fun>
`

The 'a is a type variable: it stands for an unknown type, just like a regular variable stands for an unknown value.

`
# id 42;;
- : int = 42

# id true;;
- : bool = true

# id "bigred";;
- : string = "bigred"
`

Because you can apply id to many types of values. it is a  polymorphic function: it can be applied to many forms.

#### Labeled and optional arguments

`
let f ~name1:(arg1:int) ~name2:(arg2:int) = arg1 + arg2
`

Optional arguments
`
let f ?name:(arg1=8) arg2 = arg1 + arg2;;
`

#### Partial application

What you just did is called partial application: we partially applied the function add to one argument, even though you would normally think of it as a multi-argument function. This works because the following three functions are syntactically different but semantically equivalent. That is, they are different ways of expressing the same computation:

`
let add x y = x+y
let add x = fun y -> x+y
let add = fun x -> (fun y -> x+y)

`

#### Function associativity**
*Every Ocaml function takes exactly on argument*

The type of such a function (right associative)
`t1 -> t2 -> t3 -> t4` SAME `t1 -> (t2 -> (t3 -> t4))`

Function application, on the other hand, is (left associative):
`e1 e2 e3 e4` SAME `((e1 e2) e3) e4`

#### Operators as Functions

`
# ( + );;
- : int -> int -> int = <fun>
`

### Documentation

`
(** [sum lst] is the sum of the elements of [lst]. *)
let rec sum lst = ...
`
