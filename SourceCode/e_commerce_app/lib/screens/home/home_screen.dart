import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/models/models.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  //? === Navigation ===
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName), builder: (_) => const HomeScreen(),
    );}
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //? === appbar ===
      appBar: const CustomAppBar(title: 'Monte Tabor'),
      //? === BottomNavigationBar ===
      bottomNavigationBar: const CustomNavBar(),
      body: Container(
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
      )),
    );
  }


}

class HeroCarouselCard extends StatelessWidget {

  //? ************************************************************************
  //? this will create a list of widgets, and each of this widgets will be a
  //? container with the background image from the url list copiad above

  final Category category;

  const HeroCarouselCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 20,
      ),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(category.imageUrl,
                  fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    category.name,
                    style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
