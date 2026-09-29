#include <stdio.h>

int main()
{
    int n;
    int i;
    int sum = 0;
    int formula;

    printf("Enter n: ");
    scanf("%d", &n);

    printf("\nStep 1: Base Case\n");
    printf("For n = 1:\n");
    printf("LHS = 1\n");
    printf("RHS = 1(1+1)/2 = 1\n");
    printf("Therefore, Base Case is TRUE.\n");

    printf("\nStep 2: Induction Hypothesis\n");
    printf("Assume:\n");
    printf("1 + 2 + ... + k = k(k+1)/2\n");

    printf("\nStep 3: For k + 1:\n");
    printf("1 + 2 + ... + k + (k+1)\n");
    printf("= k(k+1)/2 + (k+1)\n");
    printf("= (k+1)(k+2)/2\n");

    // Calculate actual sum
    for (i = 1; i <= n; i++)
    {
        sum = sum + i;

        printf("\nAdding %d: Sum = %d", i, sum);
    }

    formula = n * (n + 1) / 2;

    printf("\n\nFor n = %d:\n", n);

    printf("Actual Sum = %d\n", sum);

    printf("Formula = %d(%d + 1) / 2\n",
           n, n);

    printf("        = %d\n", formula);

    if (sum == formula)
        printf("\nTherefore, both sides are equal.\n");

    return 0;
}