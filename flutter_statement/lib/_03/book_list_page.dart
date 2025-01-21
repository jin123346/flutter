import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common.utils/logger.dart';
import 'inherited_parent.dart';

class BookListPage extends StatelessWidget {
  BookListPage({super.key});

  //임시데이터 - 교보문고에 볼 수 있는 책 목록 리스트
  final List<String> books = [
    '호모사피엔스',
    'dart입문',
    '홍길동전',
    'code Refactoring',
    '전치사도감',
  ];

  @override
  Widget build(BuildContext context) {
    //buildcontext를 사용하여 inheritedParentWidget에 접근할 수 있음
    InheritedParent? inheritedParent =
        context.dependOnInheritedWidgetOfExactType();
    List<String> mySelectedBooked = inheritedParent?.state ?? [];

    logger.d('데이터 확인 : ${inheritedParent?.state.toString()}');

    return inheritedParent == null
        ? const Center(
            child: Text('데이터가 없습니다.'),
          )
        : SafeArea(
            child: Scaffold(
              body: ListView(
                children: books.map(
                  (book) {
                    //함수의 body에는 식을 작성할 수 있다
                    final isSelecedBook = mySelectedBooked!.contains(book);
                    //부모가 관리하는 장바구니 데이터에 있는지 없는지

                    return ListTile(
                      leading: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Theme.of(context).secondaryHeaderColor,
                          borderRadius: BorderRadius.circular(8.0),
                          border:
                              Border.all(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      title: Text(
                        book,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          inheritedParent.onPressed(book);
                        },
                        icon: isSelecedBook
                            ? Icon(Icons.remove_circle)
                            : Icon(Icons.add_circle),
                        color: isSelecedBook ? Colors.red : Colors.green,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          );
  }
}
