#include <stdio.h>

int main()
{
    int a, b;
    int old_r, r;
    int old_s, s;
    int old_t, t;
    int q;
    int temp;

    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);

    old_r = a;
    r = b;

    old_s = 1;
    s = 0;

    old_t = 0;
    t = 1;

    printf("\nEuclidean Steps:\n");

    while (r != 0)
    {
        q = old_r / r;

        printf("%d = %d x %d + %d\n",
               old_r, r, q,
               old_r - q * r);

        temp = old_r;
        old_r = r;
        r = temp - q * r;

        temp = old_s;
        old_s = s;
        s = temp - q * s;

        temp = old_t;
        old_t = t;
        t = temp - q * t;
    }

    printf("\nGCD = %d\n", old_r);

    printf("x = %d\n", old_s);
    printf("y = %d\n", old_t);

    printf("\nBezout Equation:\n");

    printf("%d(%d) + %d(%d) = %d\n",
           a, old_s,
           b, old_t,
           old_r);

    printf("\nVerification:\n");

    printf("%d x %d + %d x %d\n",
           a, old_s, b, old_t);

    printf("= %d + %d\n",
           a * old_s,
           b * old_t);

    printf("= %d\n",
           a * old_s + b * old_t);

    return 0;
}

// ax+by=gcd(a,b)