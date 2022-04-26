import 'package:e_commerce_app/config/app_router.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Funeraria Monte Tabor',
      onGenerateRoute: AppRouter.onGeneratedRoute,
      //? === HomeScreen ===
      initialRoute: HomeScreen.routeName,
    );
  }
}
