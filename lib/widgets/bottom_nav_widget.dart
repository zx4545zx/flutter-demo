import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pos_system/providers/couter_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BottomNavWidget extends StatelessWidget {
  void Function(int)? onTabChange;
  late bool _showCartBadge;

  BottomNavWidget({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    // check counter
    _showCartBadge = context.watch<CouterProvider>().counter > 0;

    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: const EdgeInsets.all(16),
          gap: 8,
          onTabChange: (index) => onTabChange!(index),
          tabs: [
            const GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
              leading: badges.Badge(
                position: badges.BadgePosition.topEnd(top: -20, end: 15),
                badgeContent:
                    Text("${context.watch<CouterProvider>().counter}"),
                badgeStyle: badges.BadgeStyle(
                  badgeColor: _showCartBadge
                      ? Colors.red.shade200
                      : Colors.blue.shade200,
                ),
                badgeAnimation: const badges.BadgeAnimation.scale(),
                // showBadge: _showCartBadge,
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
            const GButton(
              icon: Icons.restaurant_menu,
              text: "Food",
            ),
            const GButton(
              icon: Icons.article,
              text: "Bill",
            ),
            const GButton(
              icon: Icons.chair,
              text: "Zone",
            ),
          ],
        ),
      ),
    );
  }
}
