import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier{
  List<Product> _item = dummyProducts;
  List<Product> get item => [..._item];

  void addProduct(Product product){
    _item.add(product);
    notifyListeners();
  }
}