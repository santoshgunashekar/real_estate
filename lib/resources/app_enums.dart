// Created by Santosh G on 31/05/24.

import 'package:flutter/material.dart';

enum DashboardTab { explore, chat, home, favorite, profile }

enum ExploreType {
  cosyAreas("Cosy areas", Icons.verified_user_outlined),
  price("Price", Icons.account_balance_wallet_rounded),
  infrastructure("Infrastructure", Icons.add_home_work_outlined),
  withoutAnyLayer("Without any layer", Icons.layers);

  const ExploreType(this.text, this.iconData);

  final String text;
  final IconData iconData;
}
