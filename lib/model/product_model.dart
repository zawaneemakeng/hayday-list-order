class ProductModel {
  final String name;
  final String imageUrl;
  final String level;
  bool isOutOfStock;

  ProductModel({
    required this.name,
    required this.imageUrl,
    required this.level,
    this.isOutOfStock = false,
  });
}
