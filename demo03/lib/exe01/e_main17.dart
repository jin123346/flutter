class Wizard extends Character {
  Wizard({required super.name, super.job = '마법사'}) {
    print('${this.job}의 캐릭터 `${name}`가 탄생했습니다.');
  }

  void IceAttack(Character charater) {
    print('얼음공격이 나간다!! >>> ');
    charater.Attacked();
    print('${this.name}이  ${charater.name}을 공격했습니다. '
        '상대 hp : ${charater.hp}');
  }
}

class Warrior extends Character {
  Warrior({required super.name, super.job = '전사'}) {
    print('${this.job}의 캐릭터 `${name}`가 탄생했습니다.');
  }

  void DoubleCombo(Character charater) {
    print('이단 콤보 공격 !!!!>>>');
    charater.Attacked();

    print('${this.name}이  ${charater.name}을 공격했습니다. '
        '상대 hp : ${charater.hp}');
  }
}

class Character {
  String name;
  int? power;
  int hp;
  String? job;

  Character({
    required this.name,
    this.power = 100,
    this.hp = 100,
    this.job = '직업없음',
  });

  void Attacked() {
    this.hp -= 10;
  }
}

void main() {
  Character c1 = Wizard(name: "난마법사");
  print("c1 직업 :${c1.job} , c2 이름 : ${c1.name}");

  Character c2 = Warrior(name: "난전사");
  print("c2 직업 :${c2.job} , c2 이름 : ${c2.name}");
  (c1 as Wizard).IceAttack(c2);
  (c2 as Warrior).DoubleCombo(c1);

  Wizard wizard = Wizard(name: "얼음마법사");
  print("wizard 직업 :${wizard.job} , wizard 이름 : ${wizard.name}");

  wizard.IceAttack(c2);
}
