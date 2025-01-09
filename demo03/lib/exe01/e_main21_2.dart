class Resident {
  final String name;

  Resident(this.name);

  void residentInfo() {
    print('거주자 이름 : ${name}');
  }
}

class Apartment {
  final String buildingName;
  final List<Resident> residents;

  Apartment(this.buildingName) : residents = [];

  void addResident(Resident resident) {
    residents.add(resident);
  }

  void ApartmentInfo() {
    print('=======Apartment Info========');
    print('아파트 이름 : ${buildingName}');
    for (var resident in residents) {
      resident.residentInfo();
    }
    print('=========================');
  }
}

void main() {
  Apartment a1 = Apartment('레미안');
  Resident r1 = Resident('홍길동');
  Resident r2 = Resident('김길동');
  a1.addResident(r1);
  a1.addResident(r2);
  a1.ApartmentInfo();
}
