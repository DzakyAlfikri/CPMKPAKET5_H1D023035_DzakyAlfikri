import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';
import '../../widgets/custom_bottom_nav.dart';
import '../../widgets/custom_app_bar.dart';

class TipsView extends StatelessWidget {
  const TipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Tips Go Green'),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color.fromARGB(255, 29, 88, 65), Color.fromARGB(255, 0, 150, 95)],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.forest,
                    size: 40,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Mulai Hidup Hijau Hari Ini!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Setiap langkah kecil menuju gaya hidup hijau adalah kontribusi besar untuk masa depan bumi',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Impact Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dampak Positif Go Green',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.2,
                    children: [
                      _buildImpactCard('30%', 'Hemat Listrik', Colors.blue[600]!),
                      _buildImpactCard('25%', 'Kurangi Sampah', Colors.green[600]!),
                      _buildImpactCard('40%', 'Hemat Air', Colors.cyan[600]!),
                      _buildImpactCard('20%', 'Hemat Uang', Colors.orange[600]!),
                    ],
                  ),
                ],
              ),
            ),

            // Daily Tips Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tips Harian',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildTipCard(
                    'Gunakan Tas Kain',
                    'Bawa tas kain atau tas reusable saat berbelanja untuk mengurangi penggunaan kantong plastik.',
                    Icons.shopping_bag,
                    Colors.green[400]!,
                  ),
                  const SizedBox(height: 16),
                  _buildTipCard(
                    'Botol Minum Isi Ulang',
                    'Gunakan botol minum yang bisa diisi ulang untuk mengurangi sampah botol plastik sekali pakai.',
                    Icons.water_drop,
                    Colors.blue[400]!,
                  ),
                  const SizedBox(height: 16),
                  _buildTipCard(
                    'Matikan Lampu',
                    'Matikan lampu dan alat elektronik yang tidak digunakan untuk menghemat energi listrik.',
                    Icons.lightbulb,
                    Colors.yellow[600]!,
                  ),
                  const SizedBox(height: 16),
                  _buildTipCard(
                    'Naik Transportasi Umum',
                    'Gunakan transportasi umum, sepeda, atau jalan kaki untuk mengurangi emisi kendaraan pribadi.',
                    Icons.directions_bus,
                    Colors.purple[400]!,
                  ),
                ],
              ),
            ),

            // Weekly Tips Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tips Mingguan',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.1,
                    children: [
                      _buildWeeklyTipCard('Tanam Pohon', Icons.nature, Colors.green[300]!),
                      _buildWeeklyTipCard('Kompos Organik', Icons.compost, Colors.brown[400]!),
                      _buildWeeklyTipCard('Berkebun', Icons.local_florist, Colors.pink[300]!),
                      _buildWeeklyTipCard('Bersih Lingkungan', Icons.cleaning_services, Colors.indigo[300]!),
                    ],
                  ),
                ],
              ),
            ),

            // Monthly Challenge Section
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.blue[200]!),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.emoji_events,
                    size: 40,
                    color: Colors.blue[600],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Tantangan Bulanan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Kurangi penggunaan plastik hingga 50% dalam sebulan. Ganti semua produk sekali pakai dengan alternatif ramah lingkungan.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Call to Action
            

            const SizedBox(height: 100), // Space for bottom nav
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }

  Widget _buildImpactCard(String value, String label, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: color,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildTipCard(String title, String description, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              icon,
              color: color,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeeklyTipCard(String tip, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: color,
          ),
          const SizedBox(height: 8),
          Text(
            tip,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
