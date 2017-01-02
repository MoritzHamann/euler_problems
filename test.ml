let rec sum acc remainder =
  if (remainder == 0) then acc else sum (acc + remainder) (remainder - 1)
;;

let s upto =
  let sum = ref 0 in
  for i = 0 to upto do
    sum := !sum + i
  done;
  !sum
;;

(* print_int (s 1000000000) *)
print_int (sum 0 1000000000)