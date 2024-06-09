// Created by Santosh G on 31/05/24.

import 'package:flutter/material.dart';
import 'package:real_estate_app/resources/app_utils.dart';
import 'package:real_estate_app/resources/images/jpeg_images.dart';
import 'package:real_estate_app/style/colors.dart';
import 'package:real_estate_app/style/font_size.dart';
import 'package:real_estate_app/style/spacing.dart';

part 'real_estate_places.dart';
part 'buy_rent_widget.dart';
part 'app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              AppColors.colorF8,
              AppColors.primary.withAlpha(255),
            ],
            focalRadius: 1.5,
            center: const Alignment(2.0, 0.2),
            focal: const Alignment(2.0, 0.2),
          ),
        ),
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          body: ListView(
            children: const [
              _AppBar(),
              _HeadingWidget(),
              _BuyRentWidget(),
              _PlacesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeadingWidget extends StatelessWidget {
  const _HeadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(Spacing.margin12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacing.sizedBoxHt36,
          Text(
            "Hi, Marina",
            style: TextStyle(
              color: AppColors.colorA29681,
              fontWeight: FontWeight.w400,
              fontSize: AppFontSize.s18,
            ),
          ),
          Text(
            "let's select your \nperfect place",
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w500,
              fontSize: AppFontSize.s28,
            ),
          ),
          Spacing.sizedBoxHt36,
        ],
      ),
    );
  }
}
