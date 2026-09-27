// Write a program that handles the “Divide by Zero” exception using try, catch and throw keywords.
#include <iostream>
using namespace std;

int main()
{
    int a, b;

    cout << "Enter numerator: ";
    cin >> a;

    cout << "Enter denominator: ";
    cin >> b;

    try
    {
        if (b == 0)
        {
            throw b;
        }

        cout << "Result = " << a / b << endl;
    }
    catch (int)
    {
        cout << "Error: Cannot divide by zero!" << endl;
    }

    return 0;
}
