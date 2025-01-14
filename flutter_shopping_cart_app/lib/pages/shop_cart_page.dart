import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart_app/components/shopping_cart_body02.dart';
import '/components/shopping_cart_header.dart';

class ShopCartPage extends StatelessWidget {
  const ShopCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          children: [
            ShoppingCartHeader(),
            ShoppingCartBody(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
    );
  }
} //end of page
