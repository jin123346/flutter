import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final bool isAvailable;
  final String name;
  final int stock;

  Product({required this.isAvailable, required this.name, required this.stock});

  //copyWith

  Product copyWith({bool? isAvailable, String? name, int? stock}) {
    return Product(
        isAvailable: isAvailable ?? this.isAvailable,
        name: name ?? this.name,
        stock: stock ?? this.stock);
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

  void addProduct(String name, String stock) {
    if (int.parse(stock) > 0) {
      _isAvailable = true;
    }
    state = [
      ...state,
      Product(isAvailable: _isAvailable, name: name, stock: int.parse(stock))
    ];
    _isAvailable = false;
  }

  //재고여부 변경 toggleIsAvaliable();
  void toggleIsAvailable(Product product) {
    state = List.generate(
      state.length,
      (index) {
        final p = state[index];
        return product == p
            ? p.copyWith(isAvailable: !p.isAvailable, stock: 0)
            : p;
      },
    );
  }
}

final ProductProvider =
    NotifierProvider<ProductNotifier, List<Product>>(() => ProductNotifier());
