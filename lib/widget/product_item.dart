import 'package:example/providers/product.dart';
import 'package:example/screens/product_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  // ProductItem({required this.imageUrl, required this.id, required this.title});
  //
  // final String id;
  // final String title;
  // final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              data.title,
              textAlign: TextAlign.center,
            ),
            leading: IconButton(
              color: Theme.of(context).accentColor,
              icon: Icon(
                  data.isFavorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                data.favoriteToggle();
              },
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
              ),
              color: Theme.of(context).accentColor,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ProductDetailScreen.routeName, arguments: data.id);
            },
            child: Image.network(
              data.imageUrl,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
