#include <iostream>
using namespace std;

class Car {
    string brand;
    string model;
    int year;
    double speed;

    public:
    Car(string b, string m, int y) {
        brand = b; model = m; year = y; speed = 0;
    }

    string getBrand() {
        return brand;
    }

    string getModel() {
        return model;
    }

    int getYear() {
        return year;
    }

    double getSpeed() {
        return speed;
    }

    void accelerate(double acceleration) {
        speed += acceleration;
    }

    void brake(double deceleration) {
        speed -= deceleration;
        if (speed < 0)
            speed = 0;
    }

    void displayInfo() {
        cout << year << " " << brand << " " << model << " - Speed: " << speed << "  mph" << endl;
    }
};

int main() {
    Car exCar("Tesla", "Model S", 2022);
    cout << "Initial Information: ";
    exCar.displayInfo();

    exCar.accelerate(25.5);
    cout << "After acceleration: ";
    exCar.displayInfo();

    exCar.brake(10.0);
    cout << "After braking: ";
    exCar.displayInfo();

    return 0;
}
