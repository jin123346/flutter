import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sirenorder/components/current_location_modal.dart';
import 'package:flutter_sirenorder/components/order_main_body.dart';

class OrderHomePage extends StatelessWidget {
  OrderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: _builderAppBar(width, context),
        body: OrderMainBody(),
      ),
    );
  }

  AppBar _builderAppBar(double parentwidth, BuildContext context) {
    double width80 = parentwidth * 0.8;

    void addDialog(context) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return CurrentLocationModal();
        },
      );
    }

    return AppBar(
      title: Container(
        height: 40,
        child: SearchBar(
          leading: Icon(Icons.search_outlined),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            addDialog(context);
          },
          child: Row(
            children: [Text('현재위치'), Icon(Icons.keyboard_arrow_down_outlined)],
          ),
        )
      ],
      // leadingWidth: width80,
    );
  }
}
