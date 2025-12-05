import 'package:flutter/material.dart';
import 'package:jurnalku_tw/widgets/dropdown_appbar.dart';


class UnggahProfilePage extends StatelessWidget {
  const UnggahProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: DropdownAppbar(title: "Unggah Profile"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Breadcrumb Back
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                children: [
                  Icon(Icons.arrow_back, size: 20, color: Colors.blue),
                  SizedBox(width: 6),
                  Text(
                    "Kembali ke Panduan Penggunaan",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // 🔹 Title
            Row(
              children: [
                Icon(Icons.menu_book_outlined, color: Colors.blue, size: 28),
                SizedBox(width: 8),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                        text: "Panduan Penggunaan ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: "Unggah \n Profile",
                        style: TextStyle(color: Colors.blue.shade700),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 Deskripsi
            const Text(
              "Halaman ini memberikan panduan langkah demi langkah untuk mengunggah "
              "foto profil pengguna. Pengguna diinstruksikan untuk mengakses bagian "
              "Pengaturan Akun, mengisi field Unggah Photo Profile, dan menyimpan perubahan "
              "yang telah dilakukan.",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            const SizedBox(height: 16),

            // 🔹 List Langkah
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Klik pada bagian Pengaturan Akun,",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                  Text(
                    "2. Lalu isi field Unggah Photo Profile",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                  Text(
                    "3. Jika sudah, klik Simpan",
                    style: TextStyle(fontSize: 15, height: 1.7),
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
