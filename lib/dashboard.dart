import 'package:flutter/material.dart';
import 'package:jurnalku_tw/catatan_sikap.dart';
import 'package:jurnalku_tw/jurnal_pembiasan.dart';
import 'package:jurnalku_tw/permintaan_saksi.dart';
import 'package:jurnalku_tw/profile.dart';
import 'package:jurnalku_tw/progresbelajar_page.dart';
import 'package:jurnalku_tw/widgets/dropdown_appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DropdownAppbar(title: "Dashboard"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER IMAGE
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/dashboard.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const [
                  Text(
                    "Selamat Datang Di Jurnalku",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Solusi cerdas untuk memantau perkembangan\nkompetensi siswa secara efektif",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // CONTAINER BIRU - Apa Itu Jurnalku
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                constraints: const BoxConstraints(minHeight: 150),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF1057C7),
              
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Apa Itu Jurnalku",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // CONTAINER PUTIH 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                constraints: const BoxConstraints(minHeight: 250),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.apartment_outlined, size: 48, color: Color(0xFF1E88E5)),
                    SizedBox(height: 18),
                    Text(
                      "Dirancang Khusus",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // CONTAINER PUTIH 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                constraints: const BoxConstraints(minHeight: 250),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.person_3, size: 48, color: Color(0xFF1E88E5)),
                    SizedBox(height: 18),
                    Text(
                      "Efektif",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // CONTAINER PUTIH 3
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                constraints: const BoxConstraints(minHeight: 250),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.school, size: 48, color: Color(0xFF1E88E5)),
                    SizedBox(height: 18),
                    Text(
                      "Terintegrasi",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            // MENU APLIKASI HEADER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "MENU APLIKASI",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // MENU APLIKASI CONTAINER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // PROFIL
                    _buildMenuItem(
                      context,
                      icon: Icons.person_outline,
                      color: const Color(0xFF1E88E5),
                      title: "Profil",
                      subtitle: "Lihat dan kelola profilmu di sini.",
                      page: const Profile(),
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    // PORTOFOLIO
                    _buildMenuItem(
                      context,
                      icon: Icons.work_outline,
                      color: const Color(0xFF1E88E5),
                      title: "Portofolio",
                      subtitle: "Lihat dan kelola portofolio kompetensimu di sini.",
                      page: const Profile(), // Ganti dengan halaman portofolio
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    // SERTIFIKAT
                    _buildMenuItem(
                      context,
                      icon: Icons.star_outline,
                      color: const Color(0xFF1E88E5),
                      title: "Sertifikat",
                      subtitle: "Lihat dan unduh sertifikat kompetensimu di sini.",
                      page: const Profile(), // Ganti dengan halaman sertifikat
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            // CONTAINER LAINNYA (JURNAL PEMBIASAAN, PERMINTAAN SAKSI, PROGRESS, CATATAN SIKAP)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    _buildMenuItem(
                      context,
                      icon: Icons.checklist,
                      color: const Color(0xFF1E88E5),
                      title: "Jurnal Pembiasaan",
                      subtitle: "Catat dan pantau kegiatan pembiasaan harianmu.",
                      page: const JurnalPembiasan(),
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    _buildMenuItem(
                      context,
                      icon: Icons.people_outline,
                      color: const Color(0xFF1E88E5),
                      title: "Permintaan Saksi",
                      subtitle: "Lihat teman yang mengajukan permintaan saksi.",
                      page: const PermintaanSaksi(),
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    _buildMenuItem(
                      context,
                      icon: Icons.trending_up,
                      color: const Color(0xFF1E88E5),
                      title: "Progress",
                      subtitle: "Lihat kemajuan kompetensi dan pencapaian belajarmu.",
                      page: const ProgresBelajarPage(),
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    _buildMenuItem(
                      context,
                      icon: Icons.note_alt_outlined,
                      color: const Color(0xFF1E88E5),
                      title: "Catatan Sikap",
                      subtitle: "Lihat catatan sikap dan perilaku dari guru.",
                      page: const CatatanSikap(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            // STATISTIK KOMPETENSI
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "STATISTIK KOMPETENSI",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    _buildStatItem(
                      title: "Materi Diselesaikan",
                      subtitle: "Selesai",
                      value: "0",
                      colorBox: Color(0xFFE8F5E8),
                      icon: Icons.check_circle_outline,
                      iconColor: Color(0xFF2E7D32),
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    _buildStatItem(
                      title: "Pengajuan Pending",
                      subtitle: "Pending",
                      value: "0",
                      colorBox: Color(0xFFFFF8E1),
                      icon: Icons.pending_actions,
                      iconColor: Color(0xFFFFA000),
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    _buildStatItem(
                      title: "Materi Hari Ini",
                      subtitle: "Hari Ini",
                      value: "0",
                      colorBox: Color(0xFFE3F2FD),
                      icon: Icons.today,
                      iconColor: Color(0xFF1E88E5),
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    _buildStatItem(
                      title: "Materi Revisi",
                      subtitle: "Revisi",
                      value: "0",
                      colorBox: Color(0xFFFFEBEE),
                      icon: Icons.replay,
                      iconColor: Color(0xFFD32F2F),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // HELPER MENU ITEM
  Widget _buildMenuItem(BuildContext context,
      {required IconData icon,
      required Color color,
      required String title,
      required String subtitle,
      required Widget page}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFE3F2FD),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black87)),
                  const SizedBox(height: 4),
                  Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.blue),
          ],
        ),
      ),
    );
  }

  // HELPER STAT ITEM
  Widget _buildStatItem({
    required String title,
    required String subtitle,
    required String value,
    required Color colorBox,
    required IconData icon,
    required Color iconColor,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black87)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.grey)),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: colorBox,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: iconColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(color: colorBox, borderRadius: BorderRadius.circular(8)),
            child: Icon(icon, color: iconColor, size: 24),
          ),
        ],
      ),
    );
  }
}
