// Write a program that contains an overloaded function named “Cubing”. Use this function, first to print the cube of an integer, and then to print the cube of a floating point value.
#include <iostream>
using namespace std;

int Cubing(int n)
{
    return n * n * n;
}

float Cubing(float n)
{
    return n * n * n;
}

int main()
{
    int a = 3;
    float b = 2.5;
    cout << "Cube of integer: " << Cubing(a) << endl;
    cout << "Cube of float: " << Cubing(b) << endl;

    return 0;
}
