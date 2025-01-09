mixin class Engine {
  int power = 5000;
}

mixin class Wheel {
  String wheelName = '사륜구동바퀴';
}

class BMW with Engine, Wheel {}

void main() {
  BMW b = BMW();
  Engine e = Engine();
  Wheel w = Wheel();
}
