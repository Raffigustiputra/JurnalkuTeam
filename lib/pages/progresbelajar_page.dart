import 'package:flutter/material.dart';

class ProgresBelajarPage extends StatefulWidget {
  const ProgresBelajarPage({super.key});

  @override
  State<ProgresBelajarPage> createState() => _ProgresBelajarPageState();
}

class _ProgresBelajarPageState extends State<ProgresBelajarPage> {
  final Map<String, bool> _expanded = {
    "Project Work": false,
    "Mobile Apps": false,
    "UKK (Uji Kompetensi Keahlian)": false,
    "GIM": false,
  };

  // Dummy data (masing-masing 2 data)
  final Map<String, List<Map<String, String>>> progressData = {
    "Project Work": [
      {
        "KOMPETENSI": "Membuat Aplikasi CRUD",
        "GURU": "Pak Budi",
        "TANGGAL": "20 November 2025",
        "STATUS": "Selesai",
        "CATATAN GURU": "Sudah sangat baik, pertahankan!",
        "CATATAN SISWA": "Belajar banyak tentang logika dan database.",
      },
      {
        "KOMPETENSI": "Membangun API Laravel",
        "GURU": "Bu Ani",
        "TANGGAL": "22 November 2025",
        "STATUS": "Dalam Revisi",
        "CATATAN GURU": "Perbaiki struktur endpoint.",
        "CATATAN SISWA": "Masih memahami bagian autentikasi.",
      },
    ],
    "Mobile Apps": [
      {
        "KOMPETENSI": "Membuat UI Flutter",
        "GURU": "Pak Eko",
        "TANGGAL": "25 November 2025",
        "STATUS": "Berjalan",
        "CATATAN GURU": "Desain sudah rapi.",
        "CATATAN SISWA": "Belajar layout dan widget.",
      },
      {
        "KOMPETENSI": "Implementasi State Management",
        "GURU": "Bu Rani",
        "TANGGAL": "27 November 2025",
        "STATUS": "Selesai",
        "CATATAN GURU": "Sudah memahami konsep provider.",
        "CATATAN SISWA": "Belajar hal baru yang menarik.",
      },
    ],
    "UKK (Uji Kompetensi Keahlian)": [
      {
        "KOMPETENSI": "Membuat Sistem Penjualan",
        "GURU": "Bu Rina",
        "TANGGAL": "28 November 2025",
        "STATUS": "Berjalan",
        "CATATAN GURU": "Masih dalam proses pengerjaan.",
        "CATATAN SISWA": "Menunggu validasi data penjualan.",
      },
      {
        "KOMPETENSI": "Analisis Kebutuhan Sistem",
        "GURU": "Pak Taufik",
        "TANGGAL": "29 November 2025",
        "STATUS": "Selesai",
        "CATATAN GURU": "Analisis sudah lengkap.",
        "CATATAN SISWA": "Mempelajari banyak hal baru.",
      },
    ],
    "GIM": [
      {
        "KOMPETENSI": "Mendesain Karakter 2D",
        "GURU": "Pak Fajar",
        "TANGGAL": "27 November 2025",
        "STATUS": "Selesai",
        "CATATAN GURU": "Hasil bagus dan kreatif.",
        "CATATAN SISWA": "Senang bisa mendesain dengan Photoshop.",
      },
      {
        "KOMPETENSI": "Membuat Game Simple di Unity",
        "GURU": "Bu Sinta",
        "TANGGAL": "29 November 2025",
        "STATUS": "Berjalan",
        "CATATAN GURU": "Pelajari script logic lagi.",
        "CATATAN SISWA": "Masih adaptasi dengan Unity.",
      },
    ],
  };

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

            // tanggal
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F0FE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Thursday, 4 Desember 2025",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3B6FD6),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 4 info card
            _buildInfoCard(
              "Total Pengajuan",
              "2",
              Colors.blue,
              "Semua status",
              Icons.check_circle_outline,
            ),
            const SizedBox(height: 14),
            _buildInfoCard(
              "Halaman Ini",
              "0",
              Colors.green,
              "Data ditampilkan",
              Icons.lock_clock,
            ),
            const SizedBox(height: 14),
            _buildInfoCard(
              "Status Pending",
              "0",
              Colors.orange,
              "Perlu Validasi",
              Icons.calendar_today_outlined,
            ),
            const SizedBox(height: 14),
            _buildInfoCard(
              "Total Halaman",
              "1",
              Colors.purple,
              "Navigasi Tersedia",
              Icons.menu_book_outlined,
            ),
            const SizedBox(height: 20),

            // ExpansionTile untuk kategori
            ...progressData.keys.map((title) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: _buildExpansionTile(context, title),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    String title,
    String value,
    Color color,
    String subtitle,
    IconData icon,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
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
                    Icon(Icons.circle, size: 8, color: color),
                    const SizedBox(width: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 13,
                        color: color,
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
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Icon(icon, color: Colors.white, size: 26),
          ),
        ],
      ),
    );
  }

  Widget _buildExpansionTile(BuildContext context, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          childrenPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          subtitle: const Text(
            "Kompetensi dan materi pembelajaran",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
          onExpansionChanged: (expanded) {
            setState(() {
              _expanded[title] = expanded;
            });
          },
          trailing: AnimatedRotation(
            turns: _expanded[title]! ? 0.5 : 0,
            duration: const Duration(milliseconds: 200),
            child: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black54,
              size: 26,
            ),
          ),
          children: [
            const Divider(height: 1, color: Colors.black12),
            const SizedBox(height: 10),

            // Isi tabel data vertikal (2 data per kategori)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: progressData[title]!.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        minHeight: 140, // tinggi stabil
                      ),
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE3F2FD), // biru muda lembut
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: item.entries.map((e) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87, // teks lebih jelas
                                  height: 1.4,
                                ),
                                children: [
                                  TextSpan(
                                    text: "${e.key}: ",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(text: e.value),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    if (index != progressData[title]!.length - 1)
                      const Divider(height: 20, color: Colors.black26),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}