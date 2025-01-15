import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';

import 'components/product_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('HomePage() 메모리 호출 확인!!!');

    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ProductItem(productList[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black12,
              indent: 16.0,
              endIndent: 16.0,
            );
          },
          itemCount: productList.length),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      shadowColor: Colors.black54,
      elevation: 0.5,
      forceMaterialTransparency: true,
      surfaceTintColor: Colors.green,
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            color: Colors.grey.withOpacity(0.5),
            height: 0.5,
            thickness: 0.5,
          )),
      title: InkWell(
        onTap: () {},
        child: Container(
          child: Row(
            children: [
              Text('좌동'),
              Icon(
                Icons.keyboard_arrow_down,
                size: 25,
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.list)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
      ],
    );
  }
}
