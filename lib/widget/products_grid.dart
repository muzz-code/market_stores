import 'package:example/widget/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) => ProductItem(
            imageUrl: products[i].imageUrl,
            id: products[i].id,
            title: products[i].title));
  }
}