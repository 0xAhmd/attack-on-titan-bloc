import '../../constants/colors.dart';
import 'package:flutter/material.dart';

Widget buildNoInternet() {
  return Center(
      child: SizedBox.expand(
    child: Container(
      decoration: const BoxDecoration(
        color: MyColors.navy,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset('assets/images/no_internet.gif'),
        const Text(
          'No Internet Connection',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Please check your internet connection',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ]),
    ),
  ));
}
