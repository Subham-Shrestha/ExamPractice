// Create an Abstract Base Class called Shape and then override the member functions of this class in Concrete Classes Circle and Triangle. Create an object each for the two concrete classes in the main function and display their area
#include <iostream>
using namespace std;

class Shape
{
public:

    virtual void area() = 0;
};

class Circle : public Shape
{
private:
    float radius;

public:
    Circle(float r)
    {
        radius = r;
    }
    void area() override
    {
        cout << "Area of Circle = "
             << 3.14 * radius * radius << endl;
    }
};

class Triangle : public Shape
{
private:
    float base;
    float height;

public:
    Triangle(float b, float h)
    {
        base = b;
        height = h;
    }
    void area() override
    {
        cout << "Area of Triangle = "
             << 0.5 * base * height << endl;
    }
};

int main()
{
    Circle c(5);
    Triangle t(10, 6);
    c.area();
    t.area();

    return 0;
}
