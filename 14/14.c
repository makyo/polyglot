#include <stdio.h>

int collatzLength(unsigned int num) {
    int steps = 1;
    while (num != 1) {
        steps++;
        num = num % 2 == 0 ? num / 2 : 3 * num + 1;
    }
    return steps;
}

int main(int argc, char **argv) {
    int longestChain = 0, longestChainStart, currentChain;
    for (unsigned int i = 2; i < 1000000; i++) {
        currentChain = collatzLength(i);
        if (currentChain > longestChain) {
            longestChain = currentChain;
            longestChainStart = i;
        }
    }
    printf("%d\n", longestChainStart);
}
