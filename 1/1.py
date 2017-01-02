def listmultiples(x):
  return filter(lambda x: x % 3 == 0 or x % 5 == 0, range(x))

print reduce(lambda x, y: x+y, listmultiples(1000))