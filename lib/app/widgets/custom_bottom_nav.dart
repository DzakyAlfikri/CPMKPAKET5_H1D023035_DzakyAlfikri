import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  int _indexFromRoute(String route) {
    switch (route) {
      case '/fakta':
        return 1;
      case '/daur-ulang':
        return 2;
      case '/tips':
        return 3;
      case '/about':
        return 4;
      default:
        return 0;
    }
  }

  String _routeFromIndex(int index) {
    switch (index) {
      case 1:
        return '/fakta';
      case 2:
        return '/daur-ulang';
      case 3:
        return '/tips';
      case 4:
        return '/about';
      default:
        return '/home';
    }
  }

  @override
  Widget build(BuildContext context) {
    final current = Get.currentRoute;
    final activeIndex = _indexFromRoute(current);
    final bgColor = Theme.of(context).brightness == Brightness.dark ? Colors.black : Colors.white;

    return SizedBox(
      height: 82,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // background bar
          Positioned(
            left: 12,
            right: 12,
            bottom: 10,
            child: Container(
              height: 64,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 10, offset: const Offset(0, 4)),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(Icons.lightbulb, 'Fakta', 1, activeIndex),
                  _buildNavItem(Icons.recycling, 'Daur', 2, activeIndex),
                  const SizedBox(width: 56), // space for center button
                  _buildNavItem(Icons.eco, 'Tips', 3, activeIndex),
                  _buildNavItem(Icons.info, 'Tentang', 4, activeIndex),
                ],
              ),
            ),
          ),

          // center floating button
          Positioned(
            bottom: 26,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  if (Get.currentRoute != '/home') Get.toNamed('/home');
                },
                child: Container(
                  width: 74,
                  height: 74,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(colors: [Color.fromARGB(255, 0, 150, 95), Color(0xFF34D399)]),
                    boxShadow: [
                      BoxShadow(color: Colors.green.withOpacity(0.35), blurRadius: 12, offset: const Offset(0, 6)),
                    ],
                    border: Border.all(color: Colors.white, width: 6),
                  ),
                  child: Icon(Icons.home, color: Colors.white, size: 34),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index, int activeIndex) {
    final isActive = index == activeIndex;
    final color = isActive ? Colors.green : Colors.grey.shade600;
    return InkWell(
      onTap: () {
        final route = _routeFromIndex(index);
        if (Get.currentRoute != route) Get.toNamed(route);
      },
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 56,
        height: 64,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            const SizedBox(height: 4),
            Text(label, style: TextStyle(fontSize: 10, color: color)),
          ],
        ),
      ),
    );
  }
}
