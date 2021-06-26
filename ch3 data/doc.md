## List
Syntax. There are three syntactic forms for building lists:


`
[]
e1::e2
[e1; e2; ...; en]
`

Given a list lst and element elt, we can prepend elt to lst by writing elt::lst


## Accessing Lists

`
let rec sum lst = 
  match lst with
   | [] -> 0
   | h::t -> h + sum t;;

`

## Mutating Lists

`
let inc_first lst =
  match lst with
  | [] -> []
  | h::t -> (h+1)::t
`

Share the tail list t between the old list and the new list, such that the amount of memory in use does not increase (beyond the one extra piece of memory needed to store h+1).

## Pattern Matching

`
match e with
| p1 -> e1
| p2 -> e2
| ...
| pn -> en
`

### Additional Static Checking

1. Exhaustiveness
2. Unused branches


### Deep Pattern Matching

_- ::[] matches all lists with exactly one element

- _::_ matches all lists with at least one element

- _::_::[] matches all lists with exactly two elements

- _::_::_::_ matches all lists with at least three elements

## Tail Recursion
`
let rec sum (l : int list) : int =
  match l with
  | [] -> 0
  | x :: xs -> x + (sum xs)

let rec sum_plus_acc (acc : int) (l : int list) : int =
  match l with
  | [] -> acc
  | x :: xs -> sum_plus_acc (acc + x) xs

let sum_tr : int list -> int = 
  sum_plus_acc 0
`

## More List Syntax

Instead of
`
let rec sum list = 
 match lst with
 | [] -> 0
 | h::t -->  h + sum t
`

you can write

`
let rec sum = function
| [] -> 0
| h::t -> h + sum t

`

## Variants
`
type day = Sun | Mon | Tue | Wed | Thu | Fri | Sat
let d:day = Tue
`

building just write the constructor


accessing
`
let int_of_day d = 
  match d with
  | Sun -> 1
  | Mon -> 2
  | Tue -> 3
  | Wed -> 4
  | Thu -> 5
  | Fri -> 6
  | Sat -> 7
`
