import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = Get.currentRoute;
    
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Modern gradient header
          Container(
            height: 180,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 0, 150, 95), Color.fromARGB(255, 52, 211, 153)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.eco, size: 36, color: Color(0xFF059669)),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Edukasi Lingkungan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Jaga Bumi Kita',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Menu items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                _buildMenuItem(
                  Icons.home,
                  'Home',
                  '/home',
                  currentRoute,
                  () {
                    Get.back();
                    Get.toNamed('/home');
                  },
                ),
                _buildMenuItem(
                  Icons.lightbulb,
                  'Fakta Menarik',
                  '/fakta',
                  currentRoute,
                  () {
                    Get.back();
                    Get.toNamed('/fakta');
                  },
                ),
                _buildMenuItem(
                  Icons.recycling,
                  'Cara Daur Ulang',
                  '/daur-ulang',
                  currentRoute,
                  () {
                    Get.back();
                    Get.toNamed('/daur-ulang');
                  },
                ),
                _buildMenuItem(
                  Icons.eco,
                  'Tips Go Green',
                  '/tips',
                  currentRoute,
                  () {
                    Get.back();
                    Get.toNamed('/tips');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Divider(thickness: 1),
                ),
                _buildMenuItem(
                  Icons.info,
                  'Tentang Aplikasi',
                  '/about',
                  currentRoute,
                  () {
                    Get.back();
                    Get.toNamed('/about');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    IconData icon,
    String title,
    String route,
    String currentRoute,
    VoidCallback onTap,
  ) {
    final isActive = currentRoute == route;
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: isActive ? const Color(0xFF6EE7B7).withValues(alpha: 0.15) : null,
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isActive 
                ? const Color(0xFF34D399) 
                : Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: isActive ? Colors.white : Colors.grey.shade600,
            size: 20,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
            color: isActive ? const Color(0xFF059669) : Colors.grey.shade700,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
