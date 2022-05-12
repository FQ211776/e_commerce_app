import 'package:e_commerce_app/models/models.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => CatalogScreen(category: category));
  }

  final Category category;
  // ignore: use_key_in_widget_constructors
  const CatalogScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();

    return Scaffold(
        appBar: CustomAppBar(
          title: category.name, // <-- nombre de la categoría
        ),
        bottomNavigationBar: const CustomNavBar(),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: ProductCard(product: Product.products[0]),
              widthFactor: 2.2,
            );
          },
        )

        //  ,),
        );
  }
}
