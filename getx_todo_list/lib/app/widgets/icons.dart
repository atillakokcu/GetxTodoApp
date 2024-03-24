import 'package:flutter/material.dart';
import 'package:getx_todo_list/app/core/values/icons.dart';
import 'package:getx_todo_list/app/core/values/colors.dart';

List<Icon> getIcons() {
  return const [
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: purple,
    ),
    Icon(
      IconData(worklcon, fontFamily: 'MaterialIcons'),
      color: pick,
    ),
    Icon(
      IconData(movieIcon, fontFamily: 'MaterialIcons'),
      color: green,
    ),
    Icon(
      IconData(sporticon, fontFamily: 'MaterialIcons'),
      color: green,
    ),
    Icon(
      IconData(travelIcon, fontFamily: 'MaterialIcons'),
      color: yellow,
    ),
    Icon(
      IconData(shoplcon, fontFamily: 'MaterialIcons'),
      color: lightBlue,
    ),
  ];
}
