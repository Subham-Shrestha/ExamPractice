// Write a program to demonstrate inheritance from an Employee class to a Part-time Employee class

#include <iostream>
using namespace std;
class Employee
{
public:
    string name;
    int id;

    void showEmployee()
    {
        cout << "Employee Name: " << name << endl;
        cout << "Employee ID: " << id << endl;
    }
};

class PartTimeEmployee : public Employee
{
public:
    int hours;

    void showPartTime()
    {
        cout << "Working Hours: " << hours << endl;
    }
};

int main()
{
    PartTimeEmployee p1;
    p1.name = "Ram";
    p1.id = 101;
    p1.hours = 20;
    p1.showEmployee();
    p1.showPartTime();
    return 0;
}
