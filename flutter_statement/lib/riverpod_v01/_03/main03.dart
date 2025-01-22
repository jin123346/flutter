import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement/riverpod_v01/_03/book.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookPage(),
    );
  }
}

class BookPage extends ConsumerWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> BookList = ref.watch(myBooStoreProvider);

    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Text('현재 데이터 \n ${BookList}'),
        ElevatedButton(
            onPressed: () {
              MyBookStore store = ref.read(myBooStoreProvider.notifier);
              return store.addBooks('이상한 나라의 앨리스');
            },
            child: Text('책추가하기')),
      ],
    )));
  }
}
