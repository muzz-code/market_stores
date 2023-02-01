import 'package:example/providers/products.dart';
import 'package:example/widget/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';

class ProductData extends StatelessWidget {
  final bool showFavs;

  ProductData({required this.showFavs});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final product = showFavs ? productData.favouriteItems : productData.item;
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: product.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: product[i], child: ProductItem()));
  }
}
