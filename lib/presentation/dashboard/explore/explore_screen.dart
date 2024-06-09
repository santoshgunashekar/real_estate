// Created by Santosh G on 31/05/24.


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_estate_app/style/colors.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: const Column(
          children: [
            Text("Explore")
          ],
        ),
      ),
    );
  }
}
