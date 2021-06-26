## Operators
1. OCaml deliberately does not support operator overloading. As a consequence, the integer and floating-point operators are distinct. E.g., to add integers, use +. To add floating-point numbers, use +..


2. operators = and <> examine structural equality whereas == and != examine physical equality.


## If Expressions
Static semantics. The static semantics of an if expression:

if e1 has type bool and e2 has type t and e3 has type t then if e1 then e2 else e3 has type t


### Q: how about e2 and e3 with different type
example: `if true then 3 else "3"`

compiler complains This expression has type string but an expression was expected of type int


## Let Binding

Static semantics.

If e1:t1 and if under the assumption that x:t1 it holds that e2:t2, then (let x = e1 in e2) : t2.

## Scope
`# let x = 42;;
val x : int = 42
# let x = 22;;
val x : int = 22`
Likewise, the following utop transcript is not mutable assignment, though at first it could seem like it is:


