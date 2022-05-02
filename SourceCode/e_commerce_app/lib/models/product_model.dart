import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
    const Product(
      name: 'Soft Drink #1',
      category: 'Soft Drinks',
      imageUrl: 'https://unsplash.com/photos/_ncPDMhXKJY',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: 'Soft Drink #2',
      category: 'Soft Drinks',
      imageUrl: 'https://unsplash.com/photos/_ncPDMhXKJY',
      price: 3.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: 'Soft Drink #3',
      category: 'Soft Drinks',
      imageUrl: 'https://unsplash.com/photos/_ncPDMhXKJY',
      price: 4.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: 'Soft Drink #4',
      category: 'Soft Drinks',
      imageUrl: 'https://unsplash.com/photos/_ncPDMhXKJY',
      price: 5.99,
      isRecommended: false,
      isPopular: true,
    ),
    const Product(
      name: 'Soft Drink #5',
      category: 'Soft Drinks',
      imageUrl: 'https://unsplash.com/photos/_ncPDMhXKJY',
      price: 6.99,
      isRecommended: false,
      isPopular: true,
    ),
  ];
}
