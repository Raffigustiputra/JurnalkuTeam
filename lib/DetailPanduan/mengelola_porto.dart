import 'package:flutter/material.dart';

class MengelolaportofolioPage extends StatelessWidget {
  const MengelolaportofolioPage({super.key});

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
              Row(
                children: [
                  Icon(Icons.home_outlined, size: 18, color: Colors.black45),
                  SizedBox(width: 6),
                  Icon(Icons.chevron_right, size: 18, color: Colors.black38),
                  SizedBox(width: 6),
                  Builder(
                    builder: (context) {
                      double width = MediaQuery.of(context).size.width;
                      // kalau layar kecil, tulisan nya di sembunyiin
                      if (width < 500) {
                        return SizedBox.shrink();
                      }
                      return Text(
                        "Panduan Penggunaan",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Pandu Putra Pratama",
                        style: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "PPLG XII-5",
                        style: TextStyle(fontSize: 10.5, color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/images/f.jpg"),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 20,
                    color: Colors.black54,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tombol kembali
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_outlined,
                    size: 18,
                    color: Color.fromARGB(255, 13, 73, 176),
                  ),
                  SizedBox(width: 6),
                  Text(
                    "Kembali ke Panduan Penggunaan",
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 73, 176),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Judul halaman
            Row(
              children: const [
                Icon(
                  Icons.menu_book_outlined,
                  color: Color.fromARGB(255, 13, 73, 176),
                  size: 26,
                ),
                SizedBox(width: 10),
                Text(
                  "Panduan Penggunaan \n Mengelola Portofolio",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 13, 73, 176),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            const Text(
              "Panduan ini memberikan langkah-langkah untuk menambah, mengedit, dan menghapus portofolio siswa.\n\n",
              style: TextStyle(
                fontSize: 15.5,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 12),

            // A. Menambah Portofolio Baru
            const Text(
              "A. Menambah Portofolio Baru",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Buka profil Anda (klik foto profil atau nama Anda), kemudian pilih tab 'Portofolio'.\n"
              "2. Klik tombol '+ Tambah Portofolio'.\n"
              "3. Isi form dengan informasi berikut:",
              style: TextStyle(fontSize: 15.5, height: 1.5),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "• Judul Portofolio: Nama project/portofolio (maks. 255 karakter)\n"
                "• Deskripsi: Penjelasan detail tentang project\n"
                "• Durasi Pengerjaan: Contoh '3 bulan' atau '2 minggu'\n"
                "• Link Portofolio: URL project (opsional)\n"
                "• Gambar Portofolio: Upload screenshot/foto (maks. 2MB)",
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
            ),

            const SizedBox(height: 28),

            // B. Mengedit Portofolio
            const Text(
              "B. Mengedit Portofolio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Temukan portofolio yang ingin diedit di halaman Portofolio.\n"
              "2. Klik ikon pensil pada card portofolio tersebut.\n"
              "3. Form edit akan muncul dengan data lama yang sudah terisi.\n"
              "4. Ubah data sesuai kebutuhan.\n"
              "5. Klik 'Update' untuk menyimpan perubahan.",
              style: TextStyle(fontSize: 15.5, height: 1.5),
            ),

            const SizedBox(height: 28),

            // C. Menghapus Portofolio
            const Text(
              "C. Menghapus Portofolio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Temukan portofolio yang ingin dihapus di halaman Portofolio.\n"
              "2. Klik ikon tempat sampah di card portofolio.\n"
              "3. Akan muncul konfirmasi penghapusan.\n"
              "4. Klik 'Ya, Hapus' untuk menghapus portofolio.\n\n"
              "⚠ Catatan: Penghapusan portofolio bersifat permanen dan tidak dapat dibatalkan.",
              style: TextStyle(
                fontSize: 15.5,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 28),

            // D. Melihat Detail Portofolio
            const Text(
              "D. Melihat Detail Portofolio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Klik tombol 'Lihat Detail' pada card portofolio.\n"
              "2. Anda dapat melihat informasi seperti gambar, judul, deskripsi, durasi pengerjaan, dan link.\n"
              "3. Anda juga bisa langsung mengedit atau menghapus portofolio dari halaman detail (jika Anda pemiliknya).",
              style: TextStyle(fontSize: 15.5, height: 1.5),
            ),

            const SizedBox(height: 28),

            // E. Tips Portofolio yang Baik
            const Text(
              "E. Tips Portofolio yang Baik",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "· Gunakan judul yang jelas dan menarik\n"
              "· Jelaskan deskripsi secara detail dan mudah dipahami\n"
              "· Isi durasi pengerjaan secara realistis\n"
              "· Sertakan link project jika tersedia online (GitHub, demo, dll)\n"
              "· Upload gambar dengan kualitas baik (maks. 2MB)\n"
              "· Pastikan data yang diisi akurat dan up-to-date",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            const SizedBox(height: 28),

            // F. Troubleshooting
            const Text(
              "F. Troubleshooting",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "· Modal tidak terbuka: Refresh halaman dan coba lagi\n"
              "· Error saat menyimpan: Pastikan semua field wajib sudah diisi\n"
              "· Gambar tidak terupload: Pastikan ukuran di bawah 2MB dan format JPG/PNG\n"
              "· Link tidak valid: Harus dimulai dengan http:// atau https://\n"
              "· Deskripsi tidak muncul dengan enter: Refresh halaman agar sistem menampilkan line break dengan benar",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}