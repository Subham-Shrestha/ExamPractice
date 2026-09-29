#include <stdio.h>

int main()
{
    int a1, a2, a3;
    int b1, b2, b3;
    int x, y, z;

    printf("Enter first vector (a1 a2 a3): ");
    scanf("%d %d %d", &a1, &a2, &a3);

    printf("Enter second vector (b1 b2 b3): ");
    scanf("%d %d %d", &b1, &b2, &b3);

    x = a2 * b3 - a3 * b2;
    y = a3 * b1 - a1 * b3;
    z = a1 * b2 - a2 * b1;

    printf("\nSteps:\n");

    printf("X = (%d x %d) - (%d x %d)\n",
           a2, b3, a3, b2);

    printf("  = %d - %d\n",
           a2 * b3, a3 * b2);

    printf("  = %d\n\n", x);

    printf("Y = (%d x %d) - (%d x %d)\n",
           a3, b1, a1, b3);

    printf("  = %d - %d\n",
           a3 * b1, a1 * b3);

    printf("  = %d\n\n", y);

    printf("Z = (%d x %d) - (%d x %d)\n",
           a1, b2, a2, b1);

    printf("  = %d - %d\n",
           a1 * b2, a2 * b1);

    printf("  = %d\n", z);

    printf("\nCross Product = (%d, %d, %d)\n",
           x, y, z);

    return 0;
}