import 'package:flutter/material.dart';
import '../../widgets/custom_drawer.dart';
import '../../widgets/custom_bottom_nav.dart';
import '../../widgets/custom_app_bar.dart';

class FaktaView extends StatelessWidget {
  const FaktaView({super.key});

  Widget _faktaCard(IconData icon, String title, String description, Color iconColor) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      shadowColor: Colors.green.withValues(alpha: 0.1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: iconColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: iconColor, size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: TextStyle(color: Colors.grey.shade600, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statistikCard(String angka, String label, IconData icon, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withValues(alpha: 0.9), color],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.25),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.white, size: 28),
            ),
            const SizedBox(height: 12),
            Text(
              angka,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Fakta Menarik'),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Hero Section
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color.fromARGB(255, 29, 88, 65), Color.fromARGB(255, 0, 150, 95)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withValues(alpha: 0.3),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fakta Mengejutkan! 💡',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Temukan fakta-fakta menarik tentang lingkungan yang akan membuka wawasan Anda.',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.15),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.lightbulb, color: Colors.white, size: 40),
                      ),
                    ],
                  ),
                ),
              ),

              // Statistik Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Statistik Lingkungan',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF059669)),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        _statistikCard('450', 'Tahun untuk plastik terurai', Icons.access_time, const Color(0xFFFF6B6B)),
                        const SizedBox(width: 12),
                        _statistikCard('8 Juta', 'Ton sampah di laut/tahun', Icons.waves, const Color(0xFF4ECDC4)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        _statistikCard('70%', 'Sampah bisa didaur ulang', Icons.recycling, const Color(0xFF45B7D1)),
                        const SizedBox(width: 12),
                        _statistikCard('1 Ton', 'CO2 disimpan 1 pohon', Icons.nature, const Color(0xFF96CEB4)),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Fakta Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Fakta Menarik Lingkungan',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF059669)),
                    ),
                    const SizedBox(height: 16),
                    _faktaCard(
                      Icons.water_drop,
                      'Air Bersih Langka',
                      'Sekitar 2 miliar orang di dunia tidak memiliki akses air minum yang aman di rumah mereka.',
                      const Color(0xFF4ECDC4),
                    ),
                    const SizedBox(height: 12),
                    _faktaCard(
                      Icons.forest,
                      'Deforestasi Hutan',
                      'Setiap menit, area hutan seluas 20 lapangan sepak bola hilang akibat penebangan.',
                      const Color(0xFF059669),
                    ),
                    const SizedBox(height: 12),
                    _faktaCard(
                      Icons.wb_sunny,
                      'Energi Matahari',
                      'Energi matahari yang sampai ke Bumi dalam 1 jam setara dengan kebutuhan energi dunia selama 1 tahun.',
                      const Color(0xFFFFB366),
                    ),
                    const SizedBox(height: 12),
                    _faktaCard(
                      Icons.pets,
                      'Keanekaragaman Hayati',
                      'Bumi kehilangan spesies 100-1000 kali lebih cepat dari tingkat alami akibat aktivitas manusia.',
                      const Color(0xFF96CEB4),
                    ),
                    const SizedBox(height: 12),
                    _faktaCard(
                      Icons.local_gas_station,
                      'Emisi Karbon',
                      'Sektor transportasi menyumbang 24% dari total emisi CO2 global yang berkaitan dengan energi.',
                      const Color(0xFFFF6B6B),
                    ),
                  ],
                ),
              ),

              // Call to Action
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF059669).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFF34D399).withValues(alpha: 0.3)),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Color(0xFF34D399),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.eco, color: Colors.white, size: 24),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saatnya Bertindak!',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xFF059669),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Dengan mengetahui fakta-fakta ini, mari mulai berkontribusi untuk lingkungan yang lebih baik.',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 80), // Space for bottom nav
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
