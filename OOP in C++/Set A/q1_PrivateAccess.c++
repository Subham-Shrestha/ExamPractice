// Write a program that uses constructor to initialize the private data members of a class. Then, create an object of the class and display the data initialized by the constructor

#include <iostream>
using namespace std;

class Student
{
private:
    int age;
    string name;

public:
    Student()
    {
        age = 18;
        name = "Ram";
    }
    void display()
    {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
    }
};

int main()
{
    Student s1;
    s1.display();

    return 0;
}