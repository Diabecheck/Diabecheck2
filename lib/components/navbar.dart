import 'package:flutter/material.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:hugeicons/hugeicons.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemSelected;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CrystalNavigationBar(
      currentIndex: currentIndex,
      height: 70,
      enableFloatingNavBar: true,
      borderRadius: 30,
      // ignore: deprecated_member_use
      backgroundColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.05),
      onTap: onItemSelected,
      // Default color when NOT selected
      unselectedItemColor: Colors.grey.shade400,
      items: [
        CrystalNavigationBarItem(
          icon: HugeIcons.strokeRoundedHome01,
          unselectedIcon: HugeIcons.strokeRoundedHome01,
          selectedColor: const Color.fromARGB(255, 47, 139, 219),
        ),
        CrystalNavigationBarItem(
          icon: HugeIcons.strokeRoundedDumbbell01,
          unselectedIcon: HugeIcons.strokeRoundedDumbbell01,
          selectedColor: const Color.fromARGB(255, 47, 139, 219),
        ),
        CrystalNavigationBarItem(
          icon: HugeIcons.strokeRoundedAppleStocks,
          unselectedIcon: HugeIcons.strokeRoundedAppleStocks,
          selectedColor: const Color.fromARGB(255, 47, 139, 219),
        ),
        CrystalNavigationBarItem(
          icon: HugeIcons.strokeRoundedAnalytics01,
          unselectedIcon: HugeIcons.strokeRoundedAnalytics03,
          selectedColor: const Color.fromARGB(255, 47, 139, 219),
        ),
        CrystalNavigationBarItem(
          icon: HugeIcons.strokeRoundedUser,
          unselectedIcon: HugeIcons.strokeRoundedUser,
          selectedColor: const Color.fromARGB(255, 47, 139, 219),
        ),
      ],
    );
  }
}
