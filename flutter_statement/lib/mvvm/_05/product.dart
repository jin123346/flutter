import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final bool isAvailable;
  final String name;

  Product({required this.isAvailable, required this.name});

  //copyWith

  Product copyWith({bool? isAvaliable, String? name}) {
    return Product(
        isAvailable: isAvaliable ?? this.isAvailable, name: name ?? this.name);
  }
}

class ProductNotifier extends Notifier<List<Product>> {
  bool _isAvailable = false;

  bool get isAvailable => _isAvailable;

  @override
  List<Product> build() {
    return [];
  }

  void toggleIsAvailableState() {
    _isAvailable = !_isAvailable;
    state = [...state];
  }

  //add  method

  void addProduct(String name) {
    state = [...state, Product(isAvailable: _isAvailable, name: name)];
    _isAvailable = false;
  }

  //재고여부 변경 toggleIsAvaliable();
  void toggleIsAvailable(Product product) {
    state = List.generate(
      state.length,
      (index) {
        final p = state[index];
        return product == p ? p.copyWith(isAvaliable: !p.isAvailable) : p;
      },
    );
  }
}

final ProductProvider =
    NotifierProvider<ProductNotifier, List<Product>>(() => ProductNotifier());
