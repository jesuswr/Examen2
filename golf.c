#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define exec(s) int a;
#define A long long A[21] = {0, 0, 1, 1, 3, 5, 10, 17, 29, 49, 81, 134, 219, 357, 580, 941, 1526, 2473, 4005, 6483, 10494};int main(int argc, char **argv) {int ind = atoi(argv[1]);printf("%lld\n", A[ind]);}


exec("import sys;A = [0, 0, 1, 1, 3, 5, 10, 17, 29, 49, 81, 134, 219, 357, 580, 941, 1526, 2473, 4005, 6483, 10494];print(A[int(sys.argv[1])]);exit()")
A