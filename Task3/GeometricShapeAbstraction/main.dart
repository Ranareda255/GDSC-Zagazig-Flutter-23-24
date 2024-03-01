
void main() {
  Shape rectangle = Rectangle(4, 5);
  print('Rectangle Area: ${rectangle.calculateArea()}');
  print('Rectangle Perimeter: ${rectangle.calculatePerimeter()}');

  Shape circle = Circle(3);
  print('Circle Area: ${circle.calculateArea()}');
  print('Circle Circumference: ${circle.calculatePerimeter()}');

  Shape triangle = Triangle(6, 4, 5, 7, 8);
  print('Triangle Area: ${triangle.calculateArea()}');
  print('Triangle Perimeter: ${triangle.calculatePerimeter()}');
}

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14159 * radius;
  }
}

class Triangle extends Shape {
  double base;
  double height;
  double sideA;
  double sideB;
  double sideC;

  Triangle(this.base, this.height, this.sideA, this.sideB, this.sideC);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }

  @override
  double calculatePerimeter() {
    return sideA + sideB + sideC;
  }
}