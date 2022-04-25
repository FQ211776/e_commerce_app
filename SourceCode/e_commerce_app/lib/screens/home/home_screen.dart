import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //? === appbar ===
      appBar: CustomAppBar(title: 'Monte Tabor'),
      //? === BottomNavigationBar ===
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
