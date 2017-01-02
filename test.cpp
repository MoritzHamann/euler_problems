#include <iostream>
//#include <list>

int main(int argc, char *argv[]) {
  long long result = 0;
  int upto = 1000000000;

  for (int i = 0; i < upto; i++) {
    result += i;
  }
  std::cout << result << std::endl;
}


// floats
// int main() {
//   float result = 0;
//   for (int i = 0; i < 1000000001; i++) {
//     result += i;
//   }
//   std::cout << result << std::endl;
// }



// make this functional

// const long sum(const long acc, const long rem) {
//   if (rem == 0) return acc;
//   else return sum(acc+rem, rem-1);
// }


// int main() {
//   std::cout << sum(0, 1000000000) << std::endl;
//   return 0;
// }

// even more functional

// long reduce(std::function<long(long, long)> f, long start, std::list<long> list) {
//   long r = start;
//   for (long i : list) {
//     r = f(r, i);
//   }
//   return r;
// }

// long plus(long a, long b) {
//   return a + b;
// }

// int main() {
//   std::list<long> l;
//   for (long i = 0; i < 1000001; i++) {
//     l.push_back(i);
//   }
//   std::cout << reduce(plus, 0, l) << std::endl;
// }