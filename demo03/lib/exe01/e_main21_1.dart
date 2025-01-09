class Room {
  final int roomNumber;
  Room(this.roomNumber);

  void displayRoomInfo() {
    print('방 번호는 ${roomNumber} 입니다.');
  }
}

class House {
  final String address;
  final List<Room> rooms;

  House(this.address) : rooms = [] {
    print('== 하우스 생성자 내부 스택 호출 == ');
  }

  void addRoom(int roomNumber) {
    Room room = Room(roomNumber);
    rooms.add(room);
  }

  void displayHouse() {
    print('=======House_Info========');
    print('집 주소 : ${address}');
    for (var room in rooms) {
      room.displayRoomInfo();
    }
    print('=========================');
  }
}

void main() {
  House h1 = House('부산');
  House h2 = House('서울');
  h1.addRoom(1);
  h1.addRoom(2);
  h2.addRoom(3);

  h1.displayHouse();
  h2.displayHouse();
}
