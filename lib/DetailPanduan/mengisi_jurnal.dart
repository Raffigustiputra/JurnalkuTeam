import 'package:flutter/material.dart';

class MengisiJurnal extends StatelessWidget {
  const MengisiJurnal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Colors.black12, width: 0.6),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 22),
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
                    children: [
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
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/images/f.jpg"),
                  ),
                  SizedBox(width: 4),
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
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Tombol Kembali
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, size: 20, color: Colors.blue),
                  SizedBox(width: 6),
                  Text(
                    "Kembali ke Panduan Penggunaan",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      decorationColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),

            // 🔹 Ikon + Judul
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
                        text: "Mengisi \n Jurnal",
                        style: TextStyle(color: Colors.blue.shade700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            Text(
              "Panduan ini memberikan langkah-langkah rinci bagi siswa untuk mengisi jurnal harian, "
              "mengelola pekerjaan, mempelajari materi, dan mengelola poin yang diperoleh berdasarkan aktivitas yang dilakukan.",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            SizedBox(height: 24),

            // =====================
            // A. Mengisi Jurnal Harian
            // =====================
            Text(
              "A. Mengisi Jurnal harian",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1d4ed8),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Jurnal adalah catatan harian yang berisi kegiatan yang dilakukan oleh siswa. "
              "Jurnal ini dapat diisi oleh siswa setiap hari. Berikut langkah-langkah mengisi jurnal:",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(text: "1. Pilih menu "),
                        TextSpan(
                          text: "Jurnal Pembiasaan",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: " pada sidebar."),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "2. Bagian (A) adalah tabel untuk mengisi jurnal. Sesuaikan tanggal kegiatan, kemudian isi kegiatan yang dilakukan pada hari tersebut. Kemudian klik tombol ",
                        ),
                        TextSpan(
                          text: "Simpan",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(text: " untuk menyimpan jurnal."),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "*Jurnal yang sudah berlalu tidak dapat diedit.",
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),

            // =====================
            // B. Pekerjaan yang dilakukan
            // =====================
            Text(
              "B. Pekerjaan yang dilakukan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1d4ed8),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Berikut adalah langkah-langkah untuk mengelola pekerjaan yang dilakukan:",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(text: "1. Temukan Bagian ini pada halaman "),
                        TextSpan(
                          text: "Jurnal Pembiasaan",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: " atau "),
                        TextSpan(
                          text: "Klik disini",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: "."),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(text: "2. Klik tombol "),
                        TextSpan(
                          text: "+ Tambah Pekerjaan",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: " untuk menambahkan pekerjaan baru."),
                      ],
                    ),
                  ),
                  Text(
                    "3. Isi form yang muncul dengan detail pekerjaan, tanggal, dan saksi.",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(text: "4. Klik tombol "),
                        TextSpan(
                          text: "Simpan",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(text: " untuk menyimpan pekerjaan."),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(
                          text:
                              "5. Untuk mengedit atau menghapus pekerjaan, klik tombol ",
                        ),
                        TextSpan(
                          text: "Edit",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(text: " atau "),
                        TextSpan(
                          text: "Delete",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(text: " pada pekerjaan yang diinginkan."),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 28),

            // =====================
            // C. Materi yang dipelajari
            // =====================
            Text(
              "C. Materi yang dipelajari",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1d4ed8),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Berikut adalah langkah-langkah untuk mengelola materi yang dipelajari:",
              style: TextStyle(fontSize: 15, height: 1.7),
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(text: "1. Temukan Bagian ini pada halaman "),
                        TextSpan(
                          text: "Jurnal Pembiasaan",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: " atau "),
                        TextSpan(
                          text: "Klik disini",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(text: "2. Klik tombol "),
                        TextSpan(
                          text: "+ Tambah Materi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: " untuk menambahkan materi baru."),
                      ],
                    ),
                  ),
                  Text(
                    "3. Isi form yang muncul dengan detail materi, status, tanggal, dan catatan yang ingin disampaikan ke guru.",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(text: "4. Klik tombol "),
                        TextSpan(
                          text: "Simpan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: " untuk menyimpan materi."),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 28),

            // =====================
            // D. Poin
            // =====================
            Text(
              "D. Poin",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1d4ed8),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Berikut adalah langkah-langkah untuk mengelola poin:",
              style: TextStyle(fontSize: 15, height: 1.7),
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(text: "1. Temukan Bagian ini pada halaman "),
                        TextSpan(
                          text: "Jurnal Pembiasaan",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: " atau "),
                        TextSpan(
                          text: "Klik disini",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "2. Lihat kategori poin dan jumlah poin yang telah diperoleh.",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                  Text(
                    "3. Poin ceklist pembiasaan akan ditampilkan secara otomatis berdasarkan aktivitas yang telah dilakukan.",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                  Text(
                    "4. Jumlah keseluruhan poin akan ditampilkan di bagian bawah tabel poin.",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
