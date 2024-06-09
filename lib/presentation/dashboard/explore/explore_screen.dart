// Created by Santosh G on 31/05/24.

import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/model/place_model.dart';
import 'package:real_estate_app/resources/app_enums.dart';
import 'package:real_estate_app/resources/app_utils.dart';
import 'package:real_estate_app/resources/constants.dart';
import 'package:real_estate_app/resources/images/jpeg_images.dart';
import 'package:real_estate_app/style/colors.dart';
import 'package:real_estate_app/style/font_size.dart';
import 'package:real_estate_app/style/spacing.dart';

part 'header_widget.dart';

part 'map_button.dart';

part 'places_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const SafeArea(
        top: false,
        bottom: false,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                JpegImages.map,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: AppColors.transparent,
            body: _ContentWidget(),
          ),
        ),
      ),
    );
  }
}

class _ContentWidget extends StatefulWidget {
  const _ContentWidget();

  @override
  State<_ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<_ContentWidget> {
  late ExploreType currentExploreType;
  late CustomPopupMenuController _controller;
  late List<PlaceModel> places;

  @override
  void initState() {
    currentExploreType = ExploreType.price;
    _controller = CustomPopupMenuController();
    places = AppUtils.getRandomPlaces();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacing.sizedBoxHt36,
        const _HeaderWidget(),
        Expanded(
          child: _PlacesWidget(
            currentExploreType: currentExploreType,
            places: places,
          ),
        ),
        _MapButton(
          icon: _ExploreTypeWidget(
            onTapped: (type) {
              setState(() {
                currentExploreType = type;
              });
              _controller.hideMenu();
            },
            currentExploreType: currentExploreType,
            controller: _controller,
          ),
        ),
        const Row(
          children: [
            _MapButton(
              icon: Icon(
                Icons.near_me_outlined,
                color: AppColors.white,
              ),
            ),
            Spacer(),
            _MapButton(
              icon: Icon(
                Icons.format_list_bulleted_outlined,
                color: AppColors.white,
              ),
              text: "List of variants",
            ),
          ],
        ),
        const SizedBox(
          height: Constants.buttonBarBottomMargin + Constants.buttonBarHeight,
        ),
      ],
    );
  }
}
