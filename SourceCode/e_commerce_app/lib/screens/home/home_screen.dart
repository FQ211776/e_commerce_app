import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/models/models.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  //? === Navigation ===
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //? === appbar ===
      appBar: const CustomAppBar(title: 'Home'),
      //? === BottomNavigationBar ===
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5, //  was 2.0 to make image taller
                viewportFraction: 0.9, // to made image wider
                enlargeCenterPage: true,
                //   enableInfiniteScroll: false,
                enlargeStrategy: CenterPageEnlargeStrategy
                    .height, /* reduce space
		between cards*/
                //   initialPage: 2,
                //   autoPlay: true,
              ),
              items: Category.categories
                  .map((category) => HeroCarouselCard(category: category))
                  .toList(),
            ),
          ),
          const SectionTitle(title: 'RECOMMENDED'),
         // ? === Product Card ===
          Stack(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              height: 150,
              child: Image.network(
                Product.products[0].imageUrl,
                fit: BoxFit.cover,
              ),
            )
          ])
        ],
      ),
    );
  }
}
