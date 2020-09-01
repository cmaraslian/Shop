import 'dart:math';

import 'package:Shop/providers/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CarItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CarItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CarItem> _items = {};

  Map<String, CarItem> get item {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (existingItem) => CarItem(
          id: existingItem.id,
          title: existingItem.title,
          quantity: existingItem.quantity + 1,
          price: existingItem.price,
        ),
      );
    } else {
      _items.putIfAbsent(
        product.id,
        () => CarItem(
          id: Random().nextDouble().toString(),
          title: product.title,
          quantity: 1,
          price: product.price,
        ),
      );
    }

    notifyListeners();
  }
}
