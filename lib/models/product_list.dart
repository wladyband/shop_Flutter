import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier{
  List<Product> _item = dummyProducts;

  bool _showFavoriteOnly = false;

  List<Product> get item => [..._item];
  List<Product> get favoriteItems =>
      _item.where((prod) => prod.isFavorite).toList();

  void addProduct(Product product){
    _item.add(product);
    notifyListeners();
  }
}