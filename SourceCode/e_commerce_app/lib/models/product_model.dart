import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final String price;
  final String isRecommended;
  final String isPopular;

  const Product(this.name, this.category, this.imageUrl, this.price,
      this.isRecommended, this.isPopular);

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular,];
}
