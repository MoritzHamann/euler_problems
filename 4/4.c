#include <stdio.h>

int main(int argc, const char * argv[]) {
    int max = 0;
    int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0;
    int number = 0, numberS = 0, k, l;
    
    for(k = 999; k > 100; k--){
        for(l = 999; l > 100; l--){
            number = k * l;
            if((number / 100000) > 1){
                f = number % 10;
                e = number % 100 - number % 10; e /= 10;
                d = number % 1000 - number % 100; d /= 100;
                c = number % 10000 - number % 1000; c /= 1000;
                b = number % 100000 - number % 10000; b /= 10000;
                a = number - number % 100000; a /= 100000;
                numberS = f * 100000 + e * 10000 + d * 1000 + c * 100 + b * 10 + a;
            }
            
            if(number == numberS){
                if(number > max){
                    max = number;
                }
            }

        }
    }
    printf("RESULT: %d", max);
    return 0;
}