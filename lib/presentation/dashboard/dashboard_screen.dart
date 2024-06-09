// Created by Santosh G on 31/05/24.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_estate_app/presentation/dashboard/explore/explore_screen.dart';
import 'package:real_estate_app/presentation/dashboard/home/home_screen.dart';
import 'package:real_estate_app/resources/app_enums.dart';
import 'package:real_estate_app/resources/constants.dart';
import 'package:real_estate_app/style/colors.dart';
import 'package:real_estate_app/style/font_size.dart';
import 'package:real_estate_app/style/spacing.dart';

class DashBoardRouteProvider extends StatelessWidget {
  const DashBoardRouteProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashBoardRoute();
  }
}

class DashBoardRoute extends StatefulWidget {
  const DashBoardRoute({super.key});

  @override
  State<DashBoardRoute> createState() => _DashBoardRouteState();
}

class _DashBoardRouteState extends State<DashBoardRoute> {
  DashboardTab currentTab = DashboardTab.home;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _MainWidget(tab: currentTab),
        _ButtonBar(
          currentTab: currentTab,
          onTapped: (tab) {
            setState(() {
              currentTab = tab;
            });
          },
        ),
      ],
    );
  }
}

class _ButtonBar extends StatelessWidget {
  const _ButtonBar({
    required this.currentTab,
    required this.onTapped,
  });

  final DashboardTab currentTab;

  final ValueChanged<DashboardTab> onTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: Constants.buttonBarBottomMargin),
      padding: const EdgeInsets.all(Spacing.margin4),
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(AppDimens.radius32),
      ),
      height: 60,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final DashboardTab tab = DashboardTab.values.elementAt(index);
          return _ButtonWidget(
            tab: tab,
            isCurrentTab: currentTab == tab,
            onTapped: onTapped,
          );
        },
        separatorBuilder: (context, index) {
          return Spacing.sizedBoxWt8;
        },
        itemCount: DashboardTab.values.length,
      ),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget({
    required this.tab,
    required this.isCurrentTab,
    required this.onTapped,
  });

  final DashboardTab tab;
  final bool isCurrentTab;
  final ValueChanged<DashboardTab> onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapped(tab);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        padding:
            EdgeInsets.all(isCurrentTab ? Spacing.margin12 : Spacing.margin6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isCurrentTab ? AppColors.primary : AppColors.black,
        ),
        child: _getIcon(),
      ),
    );
  }

  Widget _getIcon() {
    switch (tab) {
      case DashboardTab.explore:
        return const Icon(
          Icons.search_outlined,
          color: AppColors.white,
        );
      case DashboardTab.chat:
        return const Icon(
          Icons.message,
          color: AppColors.white,
        );
      case DashboardTab.home:
        return const Icon(
          Icons.home,
          color: AppColors.white,
        );
      case DashboardTab.favorite:
        return const Icon(
          Icons.favorite,
          color: AppColors.white,
        );
      case DashboardTab.profile:
        return const Icon(
          Icons.person,
          color: AppColors.white,
        );
    }
  }
}

class _MainWidget extends StatelessWidget {
  const _MainWidget({
    required this.tab,
  });

  final DashboardTab tab;

  @override
  Widget build(BuildContext context) {
    switch (tab) {
      case DashboardTab.explore:
        return const ExploreScreen();
      case DashboardTab.home:
        return const HomeScreen();
      default:
        return SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            backgroundColor: AppColors.screenBgColor,
            appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle.light,
            ),
            body: Column(
              children: [
                Text(tab.name),
              ],
            ),
          ),
        );
    }
  }
}
