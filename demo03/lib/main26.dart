import 'dart:math';

abstract class Shape {
  void displayArea();

  //메서드의 바디(구현부)가 없다면 추상메서드이다.
  double getArea();
}

class Circle implements Shape {
  final double radius;

  //생성자는 가능한 축약형으로 만들자
  Circle(this.radius);

  //면적을 구하는 행위가 있어야 함
  @override
  void displayArea() {
    double area = getArea();
    print('원의 넓이 : ${area}');
  }

  @override
  double getArea() {
    double area = radius * radius * pi;
    return area;
  }
}

class Rectangle implements Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  void displayArea() {
    double area = getArea();
    print('직사각형의 넓이 : ${area}');
  }

  @override
  double getArea() {
    double area = width * height;
    return area;
  }
}

//  동적 바인딩을 활용한 함수를 설계해보자

//전역함수
void calculateArea(Shape s) {
  print(s.getArea());
  s.displayArea();
}

void main() {
  Shape myCircle = Circle(5.0);
  Shape myRectangle = Rectangle(4.0, 6.0);
  calculateArea(myCircle);
  calculateArea(myRectangle);
}
