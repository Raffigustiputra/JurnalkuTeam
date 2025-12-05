import 'package:flutter/material.dart';
import 'package:jurnalku_tw/DetailPanduan/catatansikap_saya.dart';
import 'package:jurnalku_tw/DetailPanduan/ganti_password.dart';
import 'package:jurnalku_tw/DetailPanduan/kelengkapan_profile.dart';
import 'package:jurnalku_tw/DetailPanduan/mengelola_porto.dart';
import 'package:jurnalku_tw/DetailPanduan/mengelola_serti.dart';
import 'package:jurnalku_tw/DetailPanduan/mengisi_jurnal.dart';
import 'package:jurnalku_tw/DetailPanduan/unggah_profile.dart';
import 'package:jurnalku_tw/widgets/dropdown_appbar.dart';

class PanduanPenggunaPage extends StatelessWidget {
  const PanduanPenggunaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: DropdownAppbar(title: "Panduan Pengguna",),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.menu_book_outlined,
                  color: Color.fromARGB(255, 13, 73, 176),
                  size: 26,
                ),
                SizedBox(width: 10),
                Text(
                  "Panduan Penggunaan",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 13, 73, 176),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Selamat datang di panduan penggunaan aplikasi Jurnalku. Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.",
              style: TextStyle(
                fontSize: 22,
                height: 1.4,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 30),

            // ================== UMUM ==================
            Text(
              "Umum",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Divider(color: Colors.grey.shade300),
            SizedBox(height: 12),

            _menuItem(
              icon: Icons.document_scanner,
              title: "Unggah Profile",
              subtitle: "Panduan untuk mengunggah profile pengguna",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UnggahProfilePage(),
                  ),
                );
              },
            ),

            _menuItem(
              icon: Icons.document_scanner,
              title: "Ganti Password",
              subtitle: "Panduan untuk mengganti password pengguna",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GantiPassword(),
                  ),
                );
              },
            ),

            SizedBox(height: 25),

            // ================== UNTUK SISWA ==================
            Text(
              "Untuk Siswa",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Divider(color: Colors.grey.shade300),
            SizedBox(height: 12),

            _menuItem(
              icon: Icons.document_scanner,
              title: "Mengisi Jurnal",
              subtitle: "Panduan untuk mengisi kegiatan sehari - hari",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MengisiJurnal(),
                  ),
                );
              },
            ),

            _menuItem(
              icon: Icons.document_scanner,
              title: "Kelengkapan Profile",
              subtitle: "Panduan untuk melengkapi profile",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KelengkapanProfilePage(),
                  ),
                );
              },
            ),

            _menuItem(
              icon: Icons.folder_shared,
              title: "Mengelola Portfolio",
              subtitle: "Panduan untuk menambah, edit, dan hapus portfolio",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MengelolaportofolioPage(),
                  ),
                );
              },
            ),

            _menuItem(
              icon: Icons.check_circle,
              title: "Mengelola Sertifikat",
              subtitle: "Panduan untuk menambah, edit, dan hapus sertifikat",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MengelolaSertifikat(),
                  ),
                );
              },
            ),

            _menuItem(
              icon: Icons.error_outlined,
              title: "Catatan Sikap Saya",
              subtitle: "Panduan untuk melihat dan memahami catatan sikap",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatatanSikapSaya(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // ===================== MENU ITEM =====================
  Widget _menuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap, // ← WAJIB
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: EdgeInsets.only(bottom: 14),
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12, width: 0.8),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFE5EEFF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: Color.fromARGB(255, 13, 73, 176),
                size: 22,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 13, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
