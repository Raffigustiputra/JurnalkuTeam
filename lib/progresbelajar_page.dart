import 'package:flutter/material.dart';

class ProgresBelajarPage extends StatelessWidget {
  const ProgresBelajarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Colors.black12, width: 0.6),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.home_outlined, size: 24, color: Colors.black45),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Pandu Putra Pratama",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "PPLG XII-5",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/images/f.jpg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Progress Belajar",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F0FE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Thursday, 20 November 2025",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3B6FD6),
                ),
              ),
            ),
            const SizedBox(height: 20),

            _buildInfoCard(
              title: "Total Pengajuan",
              value: "2",
              subtitle: "Semua status",
              subtitleColor: Colors.blue,
              icon: Icons.check_circle_outline,
              iconColor: Colors.blue.shade100,
            ),
            const SizedBox(height: 14),
            _buildInfoCard(
              title: "Halaman Ini",
              value: "1",
              subtitle: "Data ditampilkan",
              subtitleColor: Colors.green,
              icon: Icons.calendar_today_outlined,
              iconColor: Colors.green.shade100,
            ),
            const SizedBox(height: 14),
            _buildInfoCard(
              title: "Status Pending",
              value: "0",
              subtitle: "Perlu validasi",
              subtitleColor: Colors.orange,
              icon: Icons.access_time,
              iconColor: Colors.orange.shade100,
            ),
            const SizedBox(height: 14),
            _buildInfoCard(
              title: "Total Halaman",
              value: "1",
              subtitle: "Navigasi tersedia",
              subtitleColor: const Color.fromARGB(255, 204, 4, 244),
              icon: Icons.folder_copy_outlined,
              iconColor: Colors.purple.shade100,
            ),

            const SizedBox(height: 28),
            const Divider(thickness: 0.7, color: Colors.black12),
            const SizedBox(height: 10),

            const Text(
              "Daftar Mata Pelajaran",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),

            // Kartu-kartu
            _buildLearningCard("Project Work"),
            const SizedBox(height: 12),
            _buildLearningCard("Mobile Apps"),
            const SizedBox(height: 12),
            _buildLearningCard("UKK (Uji Kompetensi Keahlian)"),
            const SizedBox(height: 12),
            _buildLearningCard("GIM"),
          ],
        ),
      ),
    );
  }

  // Widget untuk kartu ringkasan atas
  Widget _buildInfoCard({
    required String title,
    required String value,
    required String subtitle,
    required Color subtitleColor,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black12.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(Icons.circle, size: 8, color: subtitleColor),
                    const SizedBox(width: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 13,
                        color: subtitleColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: iconColor, shape: BoxShape.circle),
            child: Icon(icon, color: Colors.black45, size: 28),
          ),
        ],
      ),
    );
  }

  // Widget untuk kartu daftar pelajaran
  Widget _buildLearningCard(String title) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black12.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            "Kompetensi dan materi pembelajaran",
            style: TextStyle(fontSize: 16, color: Colors.black87,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12),
          const Divider(height: 1, color: Colors.black12),
          const SizedBox(height: 10),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                _ColumnHeader("KOMPETENSI"),
                SizedBox(width: 80),
                _ColumnHeader("GURU"),
                SizedBox(width: 80),
                _ColumnHeader("TANGGAL"),
                SizedBox(width: 85),
                _ColumnHeader("STATUS"),
                SizedBox(width: 80),
                _ColumnHeader("CATATAN GURU"),
                SizedBox(width: 80),
                _ColumnHeader("CATATAN SISWA"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ColumnHeader extends StatelessWidget {
  final String label;
  const _ColumnHeader(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 13,
        color: Colors.grey.shade600,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    );
  }
}