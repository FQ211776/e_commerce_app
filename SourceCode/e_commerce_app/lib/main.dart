import 'package:e_commerce_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}

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
