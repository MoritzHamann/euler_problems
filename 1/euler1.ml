let rec sum l =
  match l with
  | [] -> 0
  | hd :: tl -> hd + sum tl
;;

let divable x = 
  match x with
  | y when (x mod 3) == 0 -> true
  | y when (x mod 5) == 0 -> true
  | _ -> false
;;

let rec filter co l =
  match l with
  | [] -> []
  | hd :: tl -> if co hd then hd :: (filter co tl) else (filter co tl)
;;



let range x =
  let rec helper remainder l = 
    if remainder > 0 then helper (remainder - 1) (remainder :: l) else l
  in helper x []
;;

print_int (sum (filter divable (range 1000)));
print_endline "";

