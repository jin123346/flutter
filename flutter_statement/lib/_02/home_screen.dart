import 'package:flutter/material.dart';

import '../common.utils/logger.dart';
import 'book_cart_page.dart';
import 'book_list_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //로컬상태
  int pageIndex = 0;

  // 공유상태 => 여러 위젯에서 관리할 수 있음 => 카트에 담긴 책 정보( 책 리스트 화면과, 장바구니 화면에서 공유하는 데이터)
  // 상품 ->  책 (String) 타입으로 관리하자
  //객체 배열로 관리할 수 있다.
  List<String> mySelectedBook = [];

  //상태를 변경하는 메서드 만들기
  void _toggleSaveStates(String book) {
    //다시 화면을 그려라 => 요청함수
    setState(() {
      if (mySelectedBook.contains(book)) {
        mySelectedBook.remove(book);
      } else {
        mySelectedBook.add(book);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      pageIndex = 0;
    });
  }

  void _changePageIndex(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.d('HomeScreen build 메서드 호출됨 ');
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _changePageIndex(0);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          '지니의 서재',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _changePageIndex(1);
            },
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      body: IndexedStack(
        index: pageIndex,
        children: [
          BookListPage(
            mySelectedBooked: mySelectedBook,
            onToggleSaved: _toggleSaveStates,
          ),
          BookCartPage(
            mySelectedBooked: mySelectedBook,
            onToggleSaved: _toggleSaveStates,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (index) {
          return _changePageIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'book-list'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'book-cart'),
        ],
      ),
    ));
  }
}
