// Write a program that overloads the binary ‘+’ operator to find the sum of two complex numbers.

#include <iostream>
using namespace std;

class Complex
{
private:
    int real;
    int imag;

public:
    Complex(int r = 0, int i = 0)
    {
        real = r;
        imag = i;
    }

    Complex operator+(Complex c)
    {
        Complex temp;

        temp.real = real + c.real;
        temp.imag = imag + c.imag;

        return temp;
    }
    void display()
    {
        cout << real << " + " << imag << "i" << endl;
    }
};

int main()
{
    Complex c1(3, 4);
    Complex c2(2, 5);
    Complex c3 = c1 + c2;
    cout << "First complex number: ";
    c1.display();

    cout << "Second complex number: ";
    c2.display();

    cout << "Sum: ";
    c3.display();

    return 0;
}
