import 'package:flutter/material.dart';

void main() {
  runApp(MyApp02());
}

class MyApp02 extends StatelessWidget {
  const MyApp02({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

//viewmodel
class HomeViewModel {
  int _counter = 0;

  //getter
  int get counter => _counter;

  //데이터를 변경하는 기능도 뷰 모델이 가징다.

  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    _counter--;
  }
}

//view
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // 뷰는 뷰 모델만 바라보면 된다.
  // 컴포지션관계 - 내부에서 객체를 생성 ->  강한 소유의 관계이다.
  // =>MVVM을모델에서 상태관리가 중요한 이유!!! (의존도를 낮추기위해)
  final HomeViewModel homeViewModel = HomeViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('뷰 모델이 없는 코드를 작성중'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${homeViewModel.counter}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 25),

            //
            ElevatedButton(
                onPressed: () {
                  //비지니스 로직
                  setState(() {
                    homeViewModel.incrementCounter();
                  });
                },
                child: Text('increment')),
            ElevatedButton(
                onPressed: () {
                  //비지니스 로직
                  setState(() {
                    homeViewModel.decrementCounter();
                  });
                },
                child: Text('decrement')),
          ],
        ),
      ),
    ));
  }
}
