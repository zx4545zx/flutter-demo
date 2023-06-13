import 'package:flutter/material.dart';
import 'package:pos_system/screens/bill/bill_mobile.dart';
import 'package:pos_system/screens/cart/cart_mobile.dart';
import 'package:pos_system/screens/food/food_mobile.dart';
import 'package:pos_system/screens/food/food_tablet.dart';
import 'package:pos_system/screens/home/home_mobile.dart';
import 'package:pos_system/screens/home/home_tablet.dart';
import 'package:pos_system/screens/zone/zone_mobile.dart';

final List<Map<String, Widget>> pageRoutes = [
  // Home page
  {
    "mobile": const HomeMobile(),
    "tablet": const HomeTablet(),
  },
  // Cart page
  {
    "mobile": const CartMobile(),
    "tablet": const CartMobile(),
  },
  // Food page
  {
    "mobile": const FoodMobile(),
    "tablet": const FoodTablet(),
  },
  // Bills page
  {
    "mobile": const BillMobile(),
    "tablet": const BillMobile(),
  },
  // Zone page
  {
    "mobile": const ZoneMobile(),
    "tablet": const ZoneMobile(),
  },
];
