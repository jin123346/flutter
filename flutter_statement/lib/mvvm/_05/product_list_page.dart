import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement/mvvm/_05/product.dart';

class ProductListPage extends ConsumerWidget {
  ProductListPage({super.key});
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProductNotifier productNotifier = ref.read(ProductProvider.notifier);
    final List<Product> products = ref.watch(ProductProvider);
    bool _isAvailable = productNotifier.isAvailable;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: '제품명을 입력하세요'),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text('재고 유무'),
                    Checkbox(
                      value: _isAvailable,
                      onChanged: (value) {
                        productNotifier.toggleIsAvailableState();
                      },
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  productNotifier.addProduct(_nameController.text);
                  _nameController.clear(); // 입력 필드 초기화
                },
                child: Text('상품등록'),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                products.length,
                (index) {
                  final product = products[index];
                  return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('상품명 : ${product.name}'),
                        const SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Visibility(
                              visible: product.isAvailable,
                              child: Text('재고 있음'),
                              replacement: Text('재고 없음'),
                            ),
                            Checkbox(
                              value: product.isAvailable,
                              onChanged: (value) {
                                productNotifier.toggleIsAvailable(product);
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
