import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //? === appbar ===
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            //? === Text ===
            child: Text(title,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white)),
          ),
        ),

        //? === wishlist button ===
        iconTheme: const IconThemeData(color: Colors.black),
        //   actions: [
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/wishlist');
              },
              icon: const Icon(Icons.favorite))
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
