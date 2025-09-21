import 'package:first_task/Models/card_item_model.dart';
import 'package:first_task/Utilities/strings.dart';
import 'package:flutter/material.dart';

abstract class AppHelper {
  static List<CardItemModel> cards = [
    CardItemModel(icon: Icons.home, title: Strings.kCardItemOne),
    CardItemModel(icon: Icons.search, title: Strings.kCardItemTwo),
    CardItemModel(icon: Icons.person, title: Strings.kCardItemThree),
  ];
}