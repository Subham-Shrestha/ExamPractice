// Write a program to demonstrate constructor overloading
#include <iostream>
using namespace std;

class Student
{
private:
    string name;
    int age;

public:
    Student()
    {
        name = "Unknown";
        age = 0;
    }

    Student(string n)
    {
        name = n;
        age = 0;
    }

    Student(string n, int a)
    {
        name = n;
        age = a;
    }

    void display()
    {
        cout << "Name: " << name << endl;
        cout << "Age: " << age << endl;
        cout << endl;
    }
};

int main()
{
    Student s1;
    Student s2("Ram");
    Student s3("Sita", 20);

    cout << "Student 1:" << endl;
    s1.display();

    cout << "Student 2:" << endl;
    s2.display();

    cout << "Student 3:" << endl;
    s3.display();

    return 0;
}
