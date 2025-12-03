import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:ui';

class ExplorePage extends StatelessWidget {
  // Warna utama
  final Color primaryColor = const Color(0xFF02398C);

  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Row(
          children: [
            Icon(Icons.menu_book, color: primaryColor),
            SizedBox(width: 8),
            Text(
              "Jurnalku",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Dashboard",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // Background image
                SizedBox(
                  height: 330,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/Banner-Web.jpg',
                    fit: BoxFit.cover,
                  ),
                ),

                // Blur + overlay
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    // ignore: deprecated_member_use
                    child: Container(color: Colors.black.withOpacity(0.35)),
                  ),
                ),

                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ==== TEKS HEADER ====
                      Text(
                        "Direktori  Siswa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 24),

                      // ==== SEARCH BAR DI DALAM HEADER ====
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              // Bar input + tombol
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey[400]!,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.search,
                                            color: Colors.grey[600],
                                          ),
                                          SizedBox(width: 6),
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText:
                                                    "Cari nama siswa, NIS, atau rombel...",
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),

                                  // Tombol cari
                                  SizedBox(
                                    height: 48,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF02398C),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 22,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Cari",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),

                              // Tombol filter
                              OutlinedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.filter_alt_outlined,
                                  color: Color(0xFF02398C),
                                ),
                                label: Text(
                                  "Filter Lanjutan",
                                  style: TextStyle(color: Color(0xFF02398C)),
                                ),
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  // side: BorderSide(color: Color(0xFF02398C)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Menampilkan 1 - 10 dari 538 siswa",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // 🔹 10 Data Siswa Manual
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  buildCard(
                    "Abdee Munzie Alazkha",
                    "1251078",
                    "PPLG X-3",
                    "Cia 1",
                    "1 Portfolio",
                    "13 Sertifikat",
                    "assets/images/1.png",
                  ),
                  buildCard(
                    "Malika Putri Amelia",
                    "1251079",
                    "PPLG X-2",
                    "Cia 2",
                    "2 Portfolio",
                    "10 Sertifikat",
                    "assets/images/f.jpg",
                  ),
                  buildCard(
                    "Muhamad Rizqi Fadillah",
                    "1251080",
                    "PPLG X-5",
                    "Cib 3",
                    "1 Portfolio",
                    "11 Sertifikat",
                    "assets/images/rb.jpg",
                  ),
                  buildCard(
                    "Aulia Rahmawati",
                    "1251081",
                    "PPLG X-1",
                    "Cia 4",
                    "3 Portfolio",
                    "12 Sertifikat",
                    "assets/images/hk.jpg",
                  ),
                  buildCard(
                    "Pandu Putra Pratama",
                    "1251082",
                    "PPLG X-5",
                    "Cib 3",
                    "2 Portfolio",
                    "15 Sertifikat",
                    "assets/images/m.jpg",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // ==== BUTTON PREVIOUS & NEXT ====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // PREVIOUS
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    side: BorderSide(color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back, color: Colors.black87),
                      SizedBox(width: 6),
                      Text("Previous", style: TextStyle(color: Colors.black87)),
                    ],
                  ),
                ),

                // NEXT
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    side: BorderSide(color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                  ),
                  child: Row(
                    children: const [
                      Text("Next", style: TextStyle(color: Colors.black87)),
                      SizedBox(width: 6),
                      Icon(Icons.arrow_forward, color: Colors.black87),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              color: const Color.fromARGB(255, 22, 25, 130),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                        size: 23,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 23,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 23,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                        size: 23,
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Text(
                    "© GEN-28 PPLG SMK Wikrama Bogor. All Rights \nReserved.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Widget Card Siswa
  Widget buildCard(
    String nama,
    String nis,
    String rombel,
    String rayon,
    String portfolio,
    String sertifikat,
    String fotoPath,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage(fotoPath)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "$nis | $rombel | $rayon",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.work_outline,
                          color: Colors.grey[700],
                          size: 12,
                        ),
                        const SizedBox(width: 4),
                        Text(portfolio),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.card_membership_outlined,
                          color: Colors.grey[700],
                          size: 12,
                        ),
                        const SizedBox(width: 4),
                        Text(sertifikat),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF02398C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Lihat Detail",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(Icons.arrow_forward, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
