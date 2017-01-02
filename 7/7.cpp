#include <iostream>
#include <list>

int isPrime(int value) {
  for (int i = 2; i < value; i++) {
    if (value % i == 0) {
      return false;
    }
  }
  return true;
}

int main() {
  int num = 1;
  int found = 0;
  std::list<int> primes;

  while (primes.size() < 10001) {
    num++;

    if (isPrime(num)) {
      primes.push_back(num);
    }
  }

  std::cout << primes.back() << std::endl;
}