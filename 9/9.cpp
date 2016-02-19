#include <iostream>
using namespace std;

bool checkPythagoreanitude(int a, int b, int c) {
    return (a * a + b * b) == (c * c);
}

int main(int argc, char **argv) {
    int a = 999, b = 999, c = 999;
    bool found = false;
    for (; c > 0; c--) {
        for (; b > 0; b--) {
            for (; a > 0; a--) {
                if (a + b + c == 1000) {
                    if (checkPythagoreanitude(a, b, c)) {
                        found = true;
                        break;
                    }
                }
            }
            if (found) {
                break;
            }
            a = b;
        }
        if (found) {
            break;
        }
        b = c;
    }
    cout << (a * b * c) << endl;
    exit(0);
}
