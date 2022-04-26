// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGeneratedRoute(RouteSettings settings) {
    log('this is the route: ${settings.name}');
    print('this is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      case '/wishlist':
      // return WishlistScreen.route();
      case '/products':
      // return ProductScreen.route();
      case '/catalog':
      // return CatalogScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/Error'),
        builder: (_) => Scaffold(
                appBar: AppBar(
              title: const Text('Error'),
            )));
  }
}
