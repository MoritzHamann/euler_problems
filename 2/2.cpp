#include <iostream>


int main() {
  int upto = 4000000;
  int last = 1;
  int snd = 0;
  int sum = 0;
  int tmp = 0;

  while (last < upto) {
    tmp = last;
    last = last + snd;
    snd = tmp;

    if (last % 2 == 0) {
      sum += last;
    } 
  }

  std::cout << sum << std::endl;
}