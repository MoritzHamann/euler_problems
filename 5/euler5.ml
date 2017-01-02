let rec divableUpto (factor: int) (x: int) : bool =
  if factor == 0 then true else
    if (x mod factor != 0) then false else
      divableUpto (factor - 1) x
;;

let evenDivAble (limit: int) : int =
  let rec isDividable (x:int) : int = if (divableUpto limit x) then x else isDividable (x + 1)
  in isDividable 1
  ;;


print_int (evenDivAble 20);
print_endline "";