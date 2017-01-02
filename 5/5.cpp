#include <iostream>


bool isDividable(int num, int upto) {
  for (int i = upto; i > 0; i--) {
    if (num % i != 0) {
      return false;
    }
  }
  return true;
}

int main() {
  int num = 1;
  int upto = 20;
  bool found = false;
  while (!found) {
    if (isDividable(num, upto)) {
      found = true;
      // std::cout << num << std::endl;
    }
    num++;
  }
}