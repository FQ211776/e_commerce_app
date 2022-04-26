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
      appBar: CustomAppBar(title: 'Monte Tabor'),
      //? === BottomNavigationBar ===
      bottomNavigationBar: CustomNavBar(),
      body: Container(),
    );
  }
}
