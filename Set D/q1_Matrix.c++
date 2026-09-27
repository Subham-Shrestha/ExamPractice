// Write a program that contains a function template called "sum" that displays the sum of all individual items of a 2x3 matrix. Use this function template to print the sum of an integer 2x3 matrix and a floating point 2x3 matrix
#include <iostream>
using namespace std;

template <class T>
T sum(T matrix[2][3])
{
    T total = 0;
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            total = total + matrix[i][j];
        }
    }

    return total;
}

int main()
{
    int intMatrix[2][3] ={{1, 2, 3}, {4, 5, 6}};
    float floatMatrix[2][3] = {{1.5, 2.5, 3.5}, {4.5, 5.5, 6.5}};

    cout << "Sum of integer matrix = " << sum(intMatrix) << endl;
    cout << "Sum of floating-point matrix = " << sum(floatMatrix) << endl;
    return 0;
}
