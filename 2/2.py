def fib(upto):
  first = 1
  second = 1
  tmp = 0
  while second < upto:
    if second % 2 == 0:
      yield second
    tmp = second
    second = first + second
    first = tmp


print sum(fib(4000000))