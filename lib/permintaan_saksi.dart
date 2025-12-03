import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PermintaanSaksiApp());
}

class PermintaanSaksiApp extends StatelessWidget {
  const PermintaanSaksiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PermintaanSaksi(),
    );
  }
}

class PermintaanSaksi extends StatefulWidget {
  const PermintaanSaksi({super.key});

  @override
  State<PermintaanSaksi> createState() => _PermintaanSaksiState();
}

class _PermintaanSaksiState extends State<PermintaanSaksi> {
  static const String _profileImagePath = 'assets/images/profile.png';
  String? today;

  @override
  void initState() {
    super.initState();
    _initLocale();
  }

  Future<void> _initLocale() async {
    await initializeDateFormatting('id_ID', null);
    setState(() {
      today = DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(DateTime.now());
    });
  }

  PreferredSizeWidget _buildCustomAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Row(
          children: const [
            SizedBox(width: 12),
            Icon(Icons.home, size: 24, color: Colors.black45),
            SizedBox(width: 6),
          ],
        ),
      ),
      leadingWidth: 150,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Raffi Gusti Putra',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(height: 2),
              Text(
                'PPLG XII-5',
                style: TextStyle(color: Color(0xFF8D8F93), fontSize: 12),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: ClipOval(
              child: Image.asset(_profileImagePath, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Tampilkan loading kalau today belum siap
    if (today == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildCustomAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Permintaan Saksi",
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w700, // lebih bold dari bold
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 4),
            const Text(
              "Kelola permintaan menjadi saksi dari siswa lain",
              style: TextStyle(fontSize: 16, color: Color(0xFF4b5563)),
            ),
            const SizedBox(height: 20),
            // ===== Date Badge =====
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFE5EDFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                today!,
                style: const TextStyle(
                  color: Color(0xFF2563EB),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Card section bisa lanjutkan sama seperti sebelumnya
            // ===== Card Section =====
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Header Table
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F4F7), // abu-abu muda lembut
                      borderRadius: BorderRadius.circular(
                        8,
                      ), // opsional biar lembut
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          child: Text(
                            "PENGIRIM",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "TANGGAL",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "KONFIRMASI",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Empty State
                  Column(
                    children: const [
                      Icon(
                        Icons.group_outlined,
                        size: 50,
                        color: Color(0xFFB0B3B8),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Belum ada permintaan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Belum ada yang mengirim permintaan saksi kepada Anda",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13, color: Colors.black54),
                      ),
                      SizedBox(height: 24),
                    ],
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
