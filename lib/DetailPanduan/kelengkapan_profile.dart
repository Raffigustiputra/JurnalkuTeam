import 'package:flutter/material.dart';

class KelengkapanProfilePage extends StatelessWidget {
  const KelengkapanProfilePage({super.key});

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
            // 🔹 Tombol Kembali
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

            Row(
              children: const [
                Icon(
                  Icons.menu_book_outlined,
                  color: Color.fromARGB(255, 13, 73, 176),
                  size: 26,
                ),
                SizedBox(width: 10),
                Text(
                  "Panduan Penggunaan \n Kelengkapan Profil",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 13, 73, 176),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            const Text(
              "Panduan lengkap untuk melengkapi profil siswa dengan mengunggah dokumen penting dan menambahkan informasi media sosial.\n\n"
              "Untuk melengkapi profil Anda, klik nama/foto profil Anda di bagian atas halaman untuk membuka halaman profil.",
              style: TextStyle(
                fontSize: 15.5,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 28),

            const Text(
              "A. Mengunggah Dokumen",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Di halaman profil Anda, scroll ke bawah hingga menemukan bagian “Dokumen”.",
              style: TextStyle(fontSize: 15.5, height: 1.5),
            ),
            const SizedBox(height: 14),
            const Text(
              "1. Upload CV (Curriculum Vitae)",
              style: TextStyle(fontSize: 15.8, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              "· Klik tombol 'Upload CV' pada bagian Curriculum Vitae\n"
              "· Pilih file CV Anda (format: PDF, DOC, DOCX, maksimal 4MB)\n"
              "· File akan otomatis terupload setelah dipilih",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 14),
            const Text(
              "2. Upload Kartu Pelajar",
              style: TextStyle(fontSize: 15.8, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              "· Klik tombol 'Upload Kartu Pelajar' pada bagian kartu pelajar\n"
              "· Pilih foto/scan kartu pelajar Anda (format: PDF, DOC, DOCX, maksimal 2MB)\n"
              "· File akan otomatis terupload setelah dipilih\n"
              "· *Kartu pelajar hanya dapat dilihat oleh Anda dan guru",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            const SizedBox(height: 28),
            // 🔹 BAGIAN BARU B & C
            const Text(
              "B. Mengelola Media Sosial",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Di bagian 'Media Sosial' pada halaman profil Anda:",
              style: TextStyle(fontSize: 15.5, height: 1.5),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Klik tombol 'Edit' di pojok kanan atas bagian Media Sosial\n"
              "2. Modal 'Edit Media Sosial' akan terbuka\n"
              "3. Isi informasi media sosial:",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "• Nama Platform: Masukkan nama platform (Instagram, LinkedIn, GitHub, dll.)\n"
                "• URL: Masukkan link lengkap profil media sosial Anda",
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "4. Untuk menambah platform lain, klik 'Tambah Media Sosial'\n"
              "5. Klik 'Simpan Perubahan' untuk menyimpan",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            const SizedBox(height: 28),
            const Text(
              "C. Tips Penting",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 13, 73, 176),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "· Pastikan file yang diupload tidak melebihi batas ukuran maksimal\n"
              "· Gunakan URL lengkap untuk media sosial (dimulai dengan https://)\n"
              "· Profil yang lengkap akan membantu guru dan teman-teman mengenal Anda lebih baik\n"
              "· Periksa kembali informasi yang dimasukkan sebelum menyimpan",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}