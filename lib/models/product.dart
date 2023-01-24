class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {required this.price,
      required this.imageUrl,
      required this.description,
      required this.id,
       this.isFavorite = false,
      required this.title});
}
