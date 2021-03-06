type 'a binary_tree =
    | Empty
    | Node of 'a * 'a binary_tree * 'a binary_tree
;;

let rec leaves = function
    | Empty -> []
    | Node(n, Empty, Empty) -> [n]
    | Node(_, l, r) -> (leaves l)@(leaves r)
;;

let example_tree =
    Node('a', Node('b', Node('d', Empty, Empty), Node('e', Empty, Empty)),
         Node('c', Empty, Node('f', Node('g', Empty, Empty), Empty)))
;;

assert (leaves Empty = []) ;;
assert (leaves example_tree = ['d'; 'e'; 'g']) ;;
