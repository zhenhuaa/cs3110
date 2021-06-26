OCaml has an exception mechanism similar to many other programming languages. A new type of OCaml exception is defined with this syntax:
`exception E of t`


`Failure "something went wrong"`


To catch an exception, use this syntax:

`
try e with
| p1 -> e1
| ...
| pn -> en

`

