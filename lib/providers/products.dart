import 'package:Shop/data/dummy_data.dart';
import 'package:Shop/models/product.dart';
import 'package:flutter/cupertino.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;

  //..._items ... cria um uma copia da lista
  List<Product> get items => [..._items];

  List<Product> get favoriteitems {
    return items.where((prod) => prod.isFavorite).toList();
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}

//bool _showFavoriteOnly = false;
// void showFavoriteOnly() {
//   _showFavoriteOnly = true;
//   notifyListeners();
// }

//  void showAll() {
//   _showFavoriteOnly = false;
//   notifyListeners();
// }
