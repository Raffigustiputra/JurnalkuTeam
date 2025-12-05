import 'package:flutter/material.dart';
import 'package:jurnalku_tw/panduan-pengguna.dart';
import 'package:jurnalku_tw/widgets/dropdown_appbar.dart';

class CatatanSikapSaya extends StatelessWidget {
  const CatatanSikapSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: DropdownAppbar(title: "Catatan Sikap Saya"),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 75, vertical: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, size: 20, color: Color.fromARGB(255, 14, 18, 232)),
                  SizedBox(width: 6),
                  Text(
                    "Kembali ke Panduan Penggunaan",
                    style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 14, 18, 232), fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.menu_book_outlined, size: 32, color: Color.fromARGB(255, 14, 18, 232)),
                SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(text: "Panduan Penggunaan ", style: TextStyle(color: Color.fromARGB(255, 14, 18, 232))),
                      TextSpan(text: "Catatan Sikap Saya", style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Text(
              "Panduan untuk melihat dan memahami catatan sikap yang telah dilaporkan oleh guru.",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            SizedBox(height: 26),
            Text(
              "A. Mengakses Catatan Sikap",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 14, 18, 232)),
            ),
            SizedBox(height: 14),
            Text(
              "Untuk melihat catatan sikap Anda:",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
            SizedBox(height: 12),

            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1. Login ke sistem menggunakan akun siswa Anda.", style: TextStyle(fontSize: 15, height: 1.7)),
                  Text("2. Buka menu Catatan Sikap Saya dari sidebar atau dashboard.", style: TextStyle(fontSize: 15, height: 1.7)),
                  Text("3. Halaman akan menampilkan semua catatan sikap yang pernah dilaporkan untuk Anda.",
                      style: TextStyle(fontSize: 15, height: 1.7)),
                ],
              ),
            ),
            SizedBox(height: 30),
Text(
  "B. Memahami Statistik Dashboard",
  style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 14, 18, 232),
  ),
),
SizedBox(height: 10),
Text(
  "Di bagian atas halaman, terdapat 3 card statistik:",
  style: TextStyle(fontSize: 15, height: 1.6),
),
SizedBox(height: 7),
Padding(
  padding: EdgeInsets.only(left: 14),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(
                    text: "Total Catatan:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text:
                        " Jumlah total catatan sikap yang pernah dilaporkan untuk Anda",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 5),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(
                    text: "Dalam Perbaikan:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text:
                        " Catatan dengan status \"Belum Ada Perubahan\" atau \"Mulai Ada Perubahan\" (ditandai warna kuning)",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 5),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(
                    text: "Sudah Berubah:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text:
                        " Catatan dengan status \"Sudah Berubah\" - menunjukkan Anda telah berhasil memperbaiki sikap (ditandai warna hijau)",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),
SizedBox(height: 15),
Container(
  padding: EdgeInsets.all(14),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.check_box, color: Colors.green, size: 20),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          "Target: Usahakan semua catatan mencapai status \"Sudah Berubah\" dengan terus memperbaiki diri.",
          style: TextStyle(
            fontSize: 15,
            height: 1.6,
            color: Colors.green,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ],
  ),
),
  SizedBox(height: 13),
Text(
  "C. Membaca Tabel Catatan",
  style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 14, 18, 232),
  ),
),
SizedBox(height: 8),
Text(
  "Tabel catatan menampilkan informasi berikut:",
  style: TextStyle(fontSize: 15, height: 1.6),
),
SizedBox(height: 8),
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("•  "),
    Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
          children: [
            TextSpan(
              text: "No:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(text: " Nomor urut catatan"),
          ],
        ),
      ),
    ),
  ],
),
SizedBox(height: 6),
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("•  "),
    Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
          children: [
            TextSpan(
              text: "Kategori:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(text: " Jenis catatan (Perbuatan, Sifat, atau Pembelajaran)\n\n"),

            TextSpan(
              text: "   Perbuatan - ",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
            TextSpan(text: "Tindakan atau perilaku yang dilakukan\n"),

            TextSpan(
              text: "   Sifat - ",
              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w600),
            ),
            TextSpan(text: "Karakter atau attitude\n"),

            TextSpan(
              text: "   Pembelajaran - ",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
            TextSpan(text: "Terkait proses belajar"),
          ],
        ),
      ),
    ),
  ],
),
SizedBox(height: 8),
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("•  "),
    Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
          children: [
            TextSpan(
              text: "Catatan:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(text: " Deskripsi detail temuan sikap/perilaku"),
          ],
        ),
      ),
    ),
  ],
),
SizedBox(height: 6),
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("•  "),
    Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
          children: [
            TextSpan(
              text: "Status:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(text: " Status perkembangan perubahan Anda\n\n"),

            // Sub status
            TextSpan(
              text: "   Belum Ada Perubahan - ",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
            TextSpan(text: "Perlu segera diperbaiki\n"),

            TextSpan(
              text: "   Mulai Ada Perubahan - ",
              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w600),
            ),
            TextSpan(text: "Sudah ada perbaikan, pertahankan!\n"),

            TextSpan(
              text: "   Sudah Berubah - ",
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
            ),
            TextSpan(text: "Berhasil berubah positif"),
          ],
        ),
      ),
    ),
  ],
),
SizedBox(height: 8),
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("•  "),
    Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
          children: [
            TextSpan(
              text: "Dilaporkan:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: " Tanggal dan waktu catatan pertama kali dibuat",
            ),
          ],
        ),
      ),
    ),
  ],
),
SizedBox(height: 8),
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("•  "),
    Expanded(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
          children: [
            TextSpan(
              text: "Update Terakhir:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: " Tanggal dan waktu terakhir status diupdate oleh guru",
            ),
          ],
        ),
      ),
    ),
  ],
),
SizedBox(height: 30),
Text(
  "D. Melihat Riwayat Perubahan",
  style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 14, 18, 232),
  ),
),
SizedBox(height: 12),
Text(
  "Untuk melihat detail perkembangan perubahan sikap Anda:",
  style: TextStyle(fontSize: 15, height: 1.6),
),
SizedBox(height: 12),
Padding(
  padding: EdgeInsets.only(left: 14),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("1. Klik ikon jam (🕒) pada kolom Aksi di catatan yang ingin Anda lihat.",
          style: TextStyle(fontSize: 15, height: 1.7)),
      Text("2. Riwayat akan terbuka menampilkan timeline perubahan yang berisi:",
          style: TextStyle(fontSize: 15, height: 1.7)),
      SizedBox(height: 6),
      Padding(
        padding: EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("• Badge Status: Menampilkan status dengan warna (merah/kuning/hijau)",
                style: TextStyle(fontSize: 15, height: 1.6)),
            Text("• Waktu Update: Kapan update dilakukan",
                style: TextStyle(fontSize: 15, height: 1.6)),
            Text("• Nama Guru/Updater: Siapa yang melakukan evaluasi perubahan",
                style: TextStyle(fontSize: 15, height: 1.6)),
            Text("• Deskripsi: Catatan detail tentang perkembangan Anda",
                style: TextStyle(fontSize: 15, height: 1.6)),
          ],
        ),
      ),
      SizedBox(height: 6),
      Text(
        "3. Timeline ditampilkan dari yang terbaru ke yang terdahulu.",
        style: TextStyle(fontSize: 15, height: 1.7),
      ),
    ],
  ),
),
SizedBox(height: 18),
Container(
  padding: EdgeInsets.all(14),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.lightbulb, color: Colors.blue),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          "Gunakan riwayat ini untuk memahami perkembangan Anda dan area yang masih perlu diperbaiki.",
          style: TextStyle(fontSize: 15, height: 1.6),
        ),
      ),
    ],
  ),
),

SizedBox(height: 32),
Text(
  "E. Menanggapi Catatan Sikap",
  style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 14, 18, 232),
  ),
),
SizedBox(height: 12),
Text(
  "Yang harus Anda lakukan setelah menerima catatan sikap:",
  style: TextStyle(fontSize: 15, height: 1.6),
),
SizedBox(height: 12),
Padding(
  padding: EdgeInsets.only(left: 14),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("1. Baca dengan saksama: Pahami catatan yang diberikan guru.",
          style: TextStyle(fontSize: 15, height: 1.7)),
      Text("2. Refleksi diri: Renungkan perilaku Anda dan akui jika ada kesalahan.",
          style: TextStyle(fontSize: 15, height: 1.7)),
      Text("3. Buat rencana perbaikan: Tentukan langkah konkret untuk memperbaiki diri.",
          style: TextStyle(fontSize: 15, height: 1.7)),
      Text("4. Konsultasi: Jika perlu, konsultasikan dengan guru BK atau wali kelas.",
          style: TextStyle(fontSize: 15, height: 1.7)),
      Text("5. Tindak lanjut: Terapkan perubahan positif dalam keseharian.",
          style: TextStyle(fontSize: 15, height: 1.7)),
      Text("6. Pantau perkembangan: Cek berkala status catatan Anda.",
          style: TextStyle(fontSize: 15, height: 1.7)),
      Text("7. Pertahankan: Jaga konsistensi perilaku positif.",
          style: TextStyle(fontSize: 15, height: 1.7)),
    ],
  ),
),
SizedBox(height: 25),
Text(
  "F. Tips Perbaikan Diri",
  style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 14, 18, 232),
  ),
),
SizedBox(height: 12),
Text(
  "Cara efektif untuk memperbaiki sikap dan perilaku:",
  style: TextStyle(fontSize: 15, height: 1.6),
),
SizedBox(height: 12),
Padding(
  padding: EdgeInsets.only(left: 14),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(text: "Jujur pada Diri Sendiri: ", style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: "Akui kesalahan sebagai langkah awal perbaikan"),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 6),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(text: "Minta Maaf: ", style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: "Jika ada pihak yang dirugikan, minta maaf dengan tulus"),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 6),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(text: "Konsisten: ", style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: "Terapkan perubahan positif secara konsisten, bukan hanya sementara"),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 6),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(text: "Cari Dukungan: ", style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: "Minta bantuan teman, guru, atau orang tua untuk mendukung perubahan Anda"),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 6),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(text: "Evaluasi Berkala: ", style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: "Lihat perkembangan Anda melalui riwayat update status"),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 6),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(text: "Jangan Menyerah: ", style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: "Perubahan membutuhkan waktu, tetap semangat!"),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),

SizedBox(height: 25),
Text(
  "G. Memahami Kategori Catatan",
  style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 14, 18, 232),
  ),
),
SizedBox(height: 12),
Text(
  "Penjelasan detail setiap kategori catatan:",
  style: TextStyle(fontSize: 15, height: 1.6),
),
SizedBox(height: 7),
Padding(
  padding: EdgeInsets.only(left: 14),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(
                    text: "Perbuatan (Merah):\n",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: "Tindakan atau perilaku fisik yang dilakukan\n"),
                  TextSpan(text: "Contoh: berkelahi, merusak fasilitas, membolos, dll\n"),
                  TextSpan(text: "Biasanya memerlukan perhatian segera\n"),
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(
                    text: "Sifat (Orange):\n",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: "Karakter, sikap, atau attitude yang ditunjukkan\n"),
                  TextSpan(text: "Contoh: tidak sopan, tidak disiplin, egois, dll\n"),
                  TextSpan(text: "Perlu perbaikan karakter jangka panjang\n"),
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                children: [
                  TextSpan(
                    text: "Pembelajaran (Biru):\n",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: "Terkait dengan proses dan sikap belajar\n"),
                  TextSpan(text: "Contoh: malas mengerjakan tugas, mengganggu kelas, tidak fokus, dll\n"),
                  TextSpan(text: "Berdampak pada prestasi akademik\n"),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),
SizedBox(height: 20),
Text(
  "H. Hak dan Kewajiban",
  style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 14, 18, 232),
  ),
),
SizedBox(height: 12),
Text(
  "Yang perlu Anda ketahui:",
  style: TextStyle(fontSize: 15, height: 1.6),
),
SizedBox(height: 18),

Text(
  "Hak Anda:",
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.green,
  ),
),
SizedBox(height: 10),
Padding(
  padding: EdgeInsets.only(left: 14),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Melihat semua catatan sikap yang dilaporkan untuk Anda",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Mengetahui perkembangan perubahan melalui riwayat update",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Mendapat evaluasi yang objektif dan adil",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Berkonsultasi dengan guru terkait catatan yang diterima",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
    ],
  ),
),

SizedBox(height: 15),
Text(
  "Kewajiban Anda:",
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.red,
  ),
),
SizedBox(height: 10),
Padding(
  padding: EdgeInsets.only(left: 14),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Membaca dan memahami setiap catatan yang diberikan",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Melakukan introspeksi dan perbaikan diri",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Menghormati evaluasi guru",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Tidak mengulangi kesalahan yang sama",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
      SizedBox(height: 4),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  "),
          Expanded(
            child: Text(
              "Menunjukkan perubahan positif yang konsisten",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
        ],
      ),
    ],
  ),
),

SizedBox(height: 15),
Container(
  padding: EdgeInsets.all(14),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.push_pin, color: Colors.red, size: 20),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          "Catatan: Anda hanya bisa melihat, tidak bisa mengedit atau menghapus catatan. Hanya guru yang bisa mengupdate status perubahan.",
          style: TextStyle(
            fontSize: 15,
            height: 1.6,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ],
  ),
),
SizedBox(height: 20),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    // TITLE
    Text(
      "I. FAQ (Pertanyaan Umum)",
      style: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w700,
        color: Color(0xFF0E12E8), // biru seperti gambar
      ),
    ),

    SizedBox(height: 20),

    // ITEM 1
    Text(
      "Q: Apakah orang tua bisa melihat catatan sikap saya?",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
    ),
    SizedBox(height: 6),
    Text(
      "A: Ya, sistem ini dirancang transparan agar orang tua juga dapat memantau perkembangan sikap anak melalui rapor atau laporan berkala.",
      style: TextStyle(
        fontSize: 15,
        height: 1.5,
        color: Colors.black87,
      ),
    ),

    SizedBox(height: 22),

    // ITEM 2
    Text(
      "Q: Berapa lama waktu yang dibutuhkan untuk mengubah status dari \"Belum Ada Perubahan\" ke \"Sudah Berubah\"?",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
    ),
    SizedBox(height: 6),
    Text(
      "A: Tidak ada waktu pasti. Tergantung konsistensi perubahan positif yang Anda tunjukkan. Guru akan mengupdate status saat melihat perkembangan nyata.",
      style: TextStyle(
        fontSize: 15,
        height: 1.5,
        color: Colors.black87,
      ),
    ),

    SizedBox(height: 22),

    // ITEM 3
    Text(
      "Q: Apa yang harus dilakukan jika saya merasa catatan tidak adil?",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
    ),
    SizedBox(height: 6),
    Text(
      "A: Konsultasikan dengan guru yang membuat catatan atau wali kelas Anda secara langsung dengan sikap terbuka dan tidak defensif.",
      style: TextStyle(
        fontSize: 15,
        height: 1.5,
        color: Colors.black87,
      ),
    ),

    SizedBox(height: 22),

    // ITEM 4
    Text(
      "Q: Apakah catatan sikap mempengaruhi nilai rapor?",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
    ),
    SizedBox(height: 6),
    Text(
      "A: Ya, catatan sikap biasanya berpengaruh pada nilai sikap/kepribadian di rapor. Semakin baik sikap Anda, semakin baik nilai sikap Anda.",
      style: TextStyle(
        fontSize: 15,
        height: 1.5,
        color: Colors.black87,
      ),
    ),

    SizedBox(height: 40),
  ],
)
          ],
        ),
      ),
    );
  }
}