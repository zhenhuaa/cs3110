## Defenses against bugs

1. The first defense against bugs is to make them impossible.

2. The second defense against bugs is to use tools that find them.

3. The third defense against bugs is to make them immediately visible.

4. The fourth defense against bugs is extensive testing.


## How to debug

1. Distill the bug into a small test case. 

2. Employ the scientific method. 

3. Fix the bug. 

4. Permanently add the small test case to your test suite.


## Debugging in Ocaml

- Print statements

- Function traces.
`
let rec fib x = if x<=1 then 1 else fib(x-1) + fib(x-2)
#trace fib;;
`


- Debugger. OCaml has a debugging tool ocamldebug.


### Printing
There is only one value of this type, which is written () and is also pronounced "unit".

`
# 3; 5;;
Warning 10: this expression should have type unit.                                                                                                                      
- : int = 5

# ignore 3; 5;;
- : int = 5
`

### Defensive Programming
`
let random_int bound =
  assert (bound > 0 && bound < 1 lsl 30);
  (* proceed with the implementation of the function *)

`


