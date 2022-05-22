import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier{
  List<Product> _item = dummyProducts;

  bool _showFavoriteOnly = false;

  List<Product> get item {
    if(_showFavoriteOnly){
      return _item.where((prod) => prod.isFavorite).toList();
    }
    return [..._item];
  }

  void showFavoriteOnly(){
    _showFavoriteOnly = true;
    notifyListeners();
  }

  void showAll(){
    _showFavoriteOnly = false;
    notifyListeners();
  }


  void addProduct(Product product){
    _item.add(product);
    notifyListeners();
  }
}