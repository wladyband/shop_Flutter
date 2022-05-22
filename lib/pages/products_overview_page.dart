import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';


class ProductsOverviewPage extends StatelessWidget {

  ProductsOverviewPage({Key? key}) : super(key: key);

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
                  value: 0,
                ),
                PopupMenuItem(
                  child: Text('Todos'),
                  value: 1,
                )
              ],
            onSelected: (int selectedValue){
                print(selectedValue);
            },
          )
        ],
      ),
      body: ProductGrid(),
    );
  }
}


