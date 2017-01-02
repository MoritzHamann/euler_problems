#include <iostream>
#include <list>
#include <algorithm>

int main() {
  int max = 0;
    int number = 0, k, l;

    std::string s;
    std::string sr;

    std::list<int> num;
    
    for(k = 999; k > 100; k--){
        for(l = 999; l > 100; l--){
            number = k * l;

            num.push_back(number);

        }
    }

    for (auto number : num) {
        s = std::to_string(number);
        sr = s;
        std::reverse(s.begin(), s.end());
        
        if (s == sr) {
            if(number > max){
                max = number;
            }
        }
    }
  return 0;
}