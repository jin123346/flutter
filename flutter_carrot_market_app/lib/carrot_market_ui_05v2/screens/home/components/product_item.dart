import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../components/image_container.dart';
import 'product_detail.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ImageContainer(
                imgUri: product.urlToImage,
                width: 115,
                height: 115,
                borderRadius: 16.0,
              )),
          const SizedBox(width: 16.0),
          ProductDetail(product),
        ],
      ),
    );
  }
}
