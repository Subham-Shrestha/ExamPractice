#include <stdio.h>

int main()
{
    int a, b, r;

    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);

    printf("\nSteps:\n");

    while (b != 0)
    {
        r = a % b;

        printf("%d = %d x %d + %d\n", a, b, a / b, r);

        a = b;
        b = r;
    }

    printf("\nGCD = %d\n", a);

    return 0;
}

// a=bq+r
// a = b
// b = remainder