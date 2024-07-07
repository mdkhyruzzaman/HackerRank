#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() 
{
    int n1, n2, nSum, nSub;
    float f1, f2, fSum, fSub;
    scanf("%d %d", &n1, &n2);
    scanf("%f %f", &f1, &f2);
    nSum = n1+n2;
    fSum = f1+f2;

    nSub = n1-n2;
    fSub = f1-f2;
    printf("%d %d\n", nSum, nSub);
    printf("%0.1f %0.1f", fSum, fSub);
    return 0;
}