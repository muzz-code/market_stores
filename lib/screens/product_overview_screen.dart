import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My shop"),
      ),
      body: ProductsGrid(),
    );
  }
}


