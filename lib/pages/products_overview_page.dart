import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/badge.dart';
import 'package:shop/components/product_grid.dart';
import 'package:shop/models/cart.dart';

enum FilterOptions {
  Favorite,
  All
}

class ProductsOverviewPage extends StatefulWidget {

  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {

  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
        actions: [
          PopupMenuButton(

              itemBuilder: (_) => [
                PopupMenuItem(
                    child: Text('Somente Favoritos'),
                  value: FilterOptions.Favorite,
                ),
                PopupMenuItem(
                  child: Text('Todos'),
                  value: FilterOptions.All,
                )
              ],
            onSelected: (FilterOptions selectedValue){
                setState(() {
                  if(selectedValue == FilterOptions.Favorite){
                    _showFavoriteOnly = true;
                  } else {
                    _showFavoriteOnly = false;
                  }
                });
              },
          ),
          Consumer<Cart>(
            builder:(ctx, cart, child) => Badge(
              value: cart.itemsCount.toString(),
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart)
              ),
            ),
          )
        ],
      ),
      body: ProductGrid(_showFavoriteOnly),
    );
  }
}


