//Minin - 1 (사전 기반 지식)
//Dart에서 클래스의 코드를 여러 클래스에 계층에서 재사용할 수 있도록 해주는 코드 조각이다.
//Mixin을 사용하게 되면 다중 상속의 문제를 해결할 수 있고, 컴퍼지션을 사용하지 않고
//다른 클래스의 코드를 재사용 할 수 있다.

//자바에서는 단일 상속만 허용함(JAVA 최상위 클래스인 object를 제외한)

//OOP에서 객체 간의 관계를 정의하는 개념들
//연관관계
// - 객체들이 서로 연결되어 있는 일반적인 관계를 말함
// - 컴포지션 관계
// - 집합관계
//1.1 컴포지션
//    - 부분-전체 관계 중에서 생명주기가 밀접하게 연관된 강한 소유 관계를 의미한다.
//    - 전체 객체가 소멸될 때 부분 객체도 함께 소멸 됩니다.( 사람과 심장의 관계같은 느낌)
//    - 예시 : 차와 엔진 클래스도 컴포지션  / 의존성이 높음
//    [강한 소유 관계]

//1.2 집합관계
//    - 부분-전체 관계 중에서 전체와 부분의 생명주기가 독립적인 관계를 말함
//    - 전체 객체가 소멸될 때 부분 객체는 독립적으로 존재할 수 있다.
//    - 예시 : 부서(department), 직원 클래스를 생각할 수 있다.
//    - 부서 객체가 소멸되더라도 직원 객체는 계속 존재할 수 있음
//    [약한 소유 관계]

// 2. 이니졀라이저 리스트( : )
//    이니셜라이저 리스트는 상속 관계뿐만 아니라
//    연관관계(집합관게 및 컴포지션 관계)에서도 클래스의 필드 초기화및
//    객체 생성에 유용하게 사용할 수 있다/

//////////컴포지션관계////////////////
class Engine {
  final String type;
  Engine(this.type);

  void startEngine() {
    print('${type} 엔진이 시동됩니다.');
  }
}

class Car {
  final Engine engine;
  // Car(this.engine);
  //생성자코드 1. 축약버전 -> 생성자의 바디부분을 생략했다.
  //Car(String enginType) : engine = Engine(enginType)
  //생성자코드 2.
  Car(String enginType) : engine = Engine(enginType) {
    print('생성자 호출시 내부 스택 메모리가 호출 된다.');
  }

  void startCar() {
    engine.startEngine();
    print('차가 출발합니다.');
  }
}

/////////////////////////////
//집합관계를 만들어보자

class Employee {
  final String name;
  Employee(this.name);

  void displayEmployeeInfo() {
    print('직원의 이름 : ${name}');
  }
}

class Department {
  final String deptName;
  List<Employee> employees;

  Department(this.deptName) : employees = [] {
    print('==Department 생성자 내부 스택 호출 ==');
  }

  void addEmployee(Employee emps) {
    employees.add(emps);
  }

  void addEmployees(List<Employee> emps) {
    for (var emp in emps) {
      employees.add(emp);
    }
  }

  void displayDepartmentInfo() {
    print('==================');
    print('부서에 이름 : ${deptName}');
    for (var emp in employees) {
      emp.displayEmployeeInfo();
    }
    print('==================');
  }

  // [] => Dart의 리터럴 표기
}

void main() {
  Engine engine1 = Engine('v8');
  //Car car1 = Car(engine1);
  Car car1 = Car('v8');
  //누군가 참조하고 있지 않다면 GC(garbage collector) 대상이된다.

  car1.startCar();

  print('--------------------');
  Department department1 = Department("개발부");
  Department department2 = Department("디자인부");
  Employee emp1 = Employee('홍길동');
  Employee emp2 = Employee('김유신');
  Employee emp3 = Employee('야스오');
  List<Employee> emps = [emp1, emp2];
  department2.addEmployee(emp3);
  department1.addEmployees(emps);
  department1.displayDepartmentInfo();
  department2.displayDepartmentInfo();
}
