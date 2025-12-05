import 'package:flutter/material.dart';
import 'package:jurnalku_tw/widgets/dropdown_appbar.dart';

class MengelolaSertifikat extends StatelessWidget {
  const MengelolaSertifikat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: DropdownAppbar(title: "Mengelola Sertifikat"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, size: 20, color: Colors.blue.shade700),
                    SizedBox(width: 6),
                    Text(
                      "Kembali ke Panduan Penggunaan",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Icon(Icons.menu_book_outlined, size: 32, color: Colors.blue.shade800),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Panduan Pengguna Mengelola Sertifikat",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue.shade900,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Panduan ini memberikan langkah-langkah untuk menambah, mengedit, dan menghapus sertifikat siswa.",
                style: TextStyle(
                  fontSize: 15.5,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "A. Menambah Sertifikat Baru",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade900,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Berikut adalah langkah-langkah untuk menambahkan sertifikat baru:",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 18),
              Text(
                "1. Buka profil Anda (klik foto profil atau nama Anda), kemudian klik tab Sertifikat.",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 10),
              Text(
                "2. Klik tombol + Tambah Sertifikat.",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 10),
              Text(
                "3. Isi form yang muncul dengan detail berikut:",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _bullet("Judul:", "Nama sertifikat (wajib, maks 255 karakter)"),
                    SizedBox(height: 6),
                    _bullet("Deskripsi:", "Penjelasan tentang sertifikat (opsional, maks 1000 karakter)"),
                    SizedBox(height: 6),
                    _bullet("File Sertifikat:", "Upload file sertifikat (wajib, maks 10MB)"),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Text(
                "4. Klik tombol Simpan untuk menyimpan sertifikat.",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 25),
              Text(
                "*Format file yang didukung: JPEG, PNG, JPG, GIF, WEBP, PDF, DOC, DOCX (maks 10MB).",
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "B. Mengedit Sertifikat",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade900,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Berikut adalah langkah-langkah untuk mengedit sertifikat:",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 18),
              _rowNumber("1.", "Temukan sertifikat yang ingin diedit pada tab Sertifikat di profil Anda."),
              SizedBox(height: 10),
              _rowNumber("2.", "Klik ikon pensil (✏) pada card sertifikat yang ingin diedit."),
              SizedBox(height: 10),
              _rowNumber("3.", "Modal edit akan terbuka dengan data yang sudah terisi."),
              SizedBox(height: 10),
              _rowNumber("4.", "Ubah judul, deskripsi, atau ganti file jika diperlukan."),
              SizedBox(height: 10),
              _rowNumber("5.", "Klik tombol Update untuk menyimpan perubahan."),
              SizedBox(height: 18),
              Text(
                "*Jika Anda mengganti file, file lama akan otomatis dihapus.",
                style: TextStyle(
                  fontSize: 14.3,
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 40),
              // Section C: Melihat Sertifikat
              Text(
                "C. Melihat Sertifikat",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade900,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Berikut adalah cara melihat sertifikat berdasarkan jenis file:",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 18),
              _bullet("File Gambar (JPG, PNG, GIF, WEBP):", 
                "Klik pada gambar sertifikat untuk melihat preview dalam ukuran penuh. Modal preview akan terbuka dengan gambar yang dapat di-zoom. Klik tombol close atau area gelap di luar gambar untuk menutup preview."),
              SizedBox(height: 10),
              _bullet("File PDF:", 
                "Klik tombol 'Preview PDF' untuk melihat PDF dalam modal preview. Modal akan menampilkan PDF viewer dengan fitur download. Gunakan tombol download untuk menyimpan PDF ke perangkat Anda."),
              SizedBox(height: 10),
              _bullet("File Dokumen (DOC/DOCX):", 
                "Klik tombol download untuk mengunduh file. Sertifikat Anda dapat dilihat oleh guru dan pengunjung profil publik Anda."),
              SizedBox(height: 40),

              // Section D: Menghapus Sertifikat
              Text(
                "D. Menghapus Sertifikat",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade900,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Berikut adalah langkah-langkah untuk menghapus sertifikat:",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 18),
              _rowNumber("1.", "Temukan sertifikat yang ingin dihapus pada tab Sertifikat."),
              SizedBox(height: 10),
              _rowNumber("2.", "Klik ikon tempat sampah (🗑) pada card sertifikat."),
              SizedBox(height: 10),
              _rowNumber("3.", "Konfirmasi penghapusan akan muncul, baca peringatan dengan teliti."),
              SizedBox(height: 10),
              _rowNumber("4.", "Klik tombol 'Ya, Hapus' untuk menghapus sertifikat."),
              SizedBox(height: 18),
              Text(
                "⚠ Penghapusan sertifikat bersifat permanen dan tidak dapat dibatalkan. File sertifikat juga akan dihapus dari server.",
                style: TextStyle(
                  fontSize: 14.3,
                  fontStyle: FontStyle.italic,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "E. Tips Sertifikat yang Baik",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade900,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Untuk mengelola sertifikat dengan baik, perhatikan hal-hal berikut:",
                style: TextStyle(fontSize: 15.5, height: 1.6),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _bullet("Gunakan nama sertifikat yang jelas dan spesifik", ""),
                    SizedBox(height: 6),
                    _bullet("Sertakan nama lembaga/organisasi penerbit dalam judul atau deskripsi", ""),
                    SizedBox(height: 6),
                    _bullet("Deskripsi dapat mengandung line break - gunakan untuk membuat poin-poin yang mudah dibaca", ""),
                    SizedBox(height: 6),
                    _bullet("Gunakan resolusi gambar yang cukup agar teks terlihat jelas (minimal 1024px lebar)", ""),
                    SizedBox(height: 6),
                    _bullet("Format PDF lebih profesional dan universal untuk dokumen sertifikat", ""),
                    SizedBox(height: 6),
                    _bullet("Tambahkan deskripsi untuk menjelaskan skill atau pencapaian yang diperoleh", ""),
                    SizedBox(height: 6),
                    _bullet("Pastikan file tidak melebihi batas ukuran 10MB", ""),
                  ],
                ),
              ),
              SizedBox(height: 30),
Text(
  "F. Troubleshooting",
  style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: Colors.blue.shade900,
  ),
),
SizedBox(height: 15),
Text(
  "Jika mengalami masalah saat mengelola sertifikat:",
  style: TextStyle(fontSize: 15.5, height: 1.6),
),
SizedBox(height: 18),
Padding(
  padding: const EdgeInsets.only(left: 22),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _bullet("Modal tidak terbuka:", 
        "Pastikan JavaScript aktif di browser Anda, refresh halaman dan coba lagi"),
      SizedBox(height: 6),
      _bullet("Error saat upload:", 
        "Periksa ukuran file (maks 10MB)\nPastikan format file didukung (JPG, PNG, GIF, WEBP, PDF, DOC, DOCX)\nCoba compress file jika terlalu besar"),
      SizedBox(height: 6),
      _bullet("Preview tidak muncul:", 
        "Pastikan file sertifikat valid dan tidak corrupt"),
      SizedBox(height: 6),
      _bullet("PDF tidak bisa dibuka:", 
        "Gunakan browser modern (Chrome, Firefox, Edge) untuk preview PDF"),
      SizedBox(height: 6),
      _bullet("Deskripsi dengan enter bermasalah:", 
        "Sistem sekarang mendukung line break, refresh browser jika masih ada masalah"),
    ],
  ),
),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bullet(String bold, String normal) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black87, fontSize: 15.5, height: 1.5),
        children: [
          TextSpan(text: "• "),
          TextSpan(text: "$bold ", style: TextStyle(fontWeight: FontWeight.normal)),
          TextSpan(text: normal),
        ],
      ),
    );
  }

  Widget _rowNumber(String number, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: TextStyle(fontSize: 15.5, height: 1.4, color: Colors.black87),
        ),
        SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 15.5, height: 1.5, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
