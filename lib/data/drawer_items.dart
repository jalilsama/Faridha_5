
import 'package:faridha/model/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';


//in this file you can change the items name of the side menu
final itemsFirst = [
  DrawerItem(title: 'Home', icon: Icons.home),
  DrawerItem(title: 'Supplications', icon: Icons.article),
  DrawerItem(title: 'Holy places', icon: Icons.location_on),
  DrawerItem(title: 'Miqat', icon: Icons.bathtub_sharp),
  DrawerItem(title: 'Counter', icon: Icons.alarm_add),
  DrawerItem(title: 'NearBy', icon: Icons.near_me),
];
// the lower part of the side menu after the divider
final itemsSecond = [
  DrawerItem(title: 'Important Information', icon: Icons.article),
  DrawerItem(title: 'Settings', icon: Icons.settings_outlined),
];
