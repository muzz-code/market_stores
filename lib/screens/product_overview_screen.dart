import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/product_grid.dart';

enum FilterOptions { Favourites, All }

class ProductOverviewScreen extends StatefulWidget {
  ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavourites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My shop"),
          actions: <Widget>[
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                const PopupMenuItem(
                    value: FilterOptions.Favourites,
                    child: Text('only Favorites')),
                const PopupMenuItem(
                    value: FilterOptions.All, child: Text('All'))
              ],
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favourites) {
                    _showOnlyFavourites = true;
                  } else {
                    _showOnlyFavourites = false;
                  }
                });
              },
            )
          ],
        ),
        body: ProductData(
          showFavs: _showOnlyFavourites,
        ));
  }
}
