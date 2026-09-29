// truth table of tautology and contradiction

#include <stdio.h>

int main()
{
    int a;
    char Achar, NotAchar, TautologyChar, ContradictionChar;

    printf("|| A | Not A | Tautology | Contradiction ||\n");
    printf("||---+-------+-----------+---------------||\n");

    for (a = 0; a <= 1; a++)
    {
        if (a == 1)
            Achar = 'T';
        else
            Achar = 'F';

        if (a == 1)
            NotAchar = 'F';
        else
            NotAchar = 'T';

        if (a || !a)
            TautologyChar = 'T';
        else
            TautologyChar = 'F';

        if (a && !a)
            ContradictionChar = 'T';
        else
            ContradictionChar = 'F';

        printf("|| %c |   %c   |     %c     |      %c        ||\n", Achar, NotAchar, TautologyChar, ContradictionChar);
    }

    return 0;
}