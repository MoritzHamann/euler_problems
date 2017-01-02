#include <iostream>
#include <vector>

int main () {
  std::vector<int> multiplies;
  for (int i = 0; i < 1000; i++) {
    if (i % 5 == 0 or i % 3 == 0) {
      multiplies.push_back(i);
    }
  }
  int sum = 0;
  for (auto i : multiplies) {
    sum += i;
  }
  std::cout << sum << std::endl;
}