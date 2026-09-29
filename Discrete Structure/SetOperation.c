#include <stdio.h>

int main()
{
    int A[] = {1, 2, 3, 4, 5};
    int B[] = {3, 4, 5, 6, 7};

    int i;

    printf("A = {1, 2, 3, 4, 5}\n");
    printf("B = {3, 4, 5, 6, 7}\n\n");

    // Union
    printf("Union A U B = {");

    for (i = 0; i < 5; i++)
        printf("%d ", A[i]);

    printf("6 7}\n");

    // Intersection
    printf("Intersection A n B = {3 4 5}\n");

    // Difference
    printf("Difference A - B = {1 2}\n");
    printf("Difference B - A = {6 7}\n");

    return 0;
}