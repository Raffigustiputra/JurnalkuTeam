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

  List<Map<String, dynamic>> requests = [
    {
      "pengirim": "Rizky Ramadhan",
      "tanggal": DateTime(2025, 1, 12),
      "kelas": "XII-4",
      "alasan": "Diperlukan saksi pada pelanggaran keterlambatan.",
    },
    {
      "pengirim": "Salsa Oktaviani",
      "tanggal": DateTime(2025, 1, 11),
      "kelas": "XI-3",
      "alasan": "Saksi proyek ujikom.",
    },
    {
      "pengirim": "Bagus Rendra",
      "tanggal": DateTime(2025, 1, 8),
      "kelas": "X-2",
      "alasan": "Diperlukan saksi pada kegiatan eskul.",
    },
  ];

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

  @override
  Widget build(BuildContext context) {
    if (today == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: _customAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TITLE
            Text(
              "Permintaan Saksi",
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Kelola permintaan menjadi saksi dari siswa lain",
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            const SizedBox(height: 20),

            _dateBadge(),
            const SizedBox(height: 30),

            _tableHeader(),
            const SizedBox(height: 12),

            ...requests.map((e) => _expansionRow(e)).toList(),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------
  // APP BAR CUSTOM
  // ---------------------------------------------------
  PreferredSizeWidget _customAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black12, width: 0.6)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Breadcrumb
            Row(
              children: [
                const Icon(Icons.home_outlined, size: 18, color: Colors.black45),
                const SizedBox(width: 6),
                const Icon(Icons.chevron_right, size: 18, color: Colors.black38),
                const SizedBox(width: 6),
                Builder(
                  builder: (context) {
                    if (MediaQuery.of(context).size.width < 500) {
                      return const SizedBox.shrink();
                    }
                    return const Text(
                      "Permintaan Saksi",
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

            // Profile
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Raffi Gusti Putra",
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "PPLG XII-5",
                      style: GoogleFonts.poppins(
                        fontSize: 10.5,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(_profileImagePath),
                ),
                const SizedBox(width: 4),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------
  // BADGE TANGGAL
  // ---------------------------------------------------
  Widget _dateBadge() {
    return Container(
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
    );
  }

  // ---------------------------------------------------
  // HEADER TABLE
  // ---------------------------------------------------
  Widget _tableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
      decoration: BoxDecoration(
        color: const Color(0xFe2e8f0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(child: _headerText("PENGIRIM", TextAlign.left)),
          Expanded(child: _headerText("TANGGAL", TextAlign.center)),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: _headerText("DETAILS", TextAlign.right),
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerText(String text, TextAlign align) {
    return Text(
      text,
      textAlign: align,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 13,
        color: Color(0xFF374151),
      ),
    );
  }

  // ---------------------------------------------------
  // EXPANSION TILE
  // ---------------------------------------------------
  Widget _expansionRow(Map data) {
    final tgl = DateFormat('dd MMM yyyy', 'id_ID').format(data["tanggal"]);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          iconColor: Colors.blue[600],
          collapsedIconColor: Colors.black54,
          tilePadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          childrenPadding: const EdgeInsets.fromLTRB(16, 6, 16, 12),

          title: Row(
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  data["pengirim"],
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Center(
                  child: Text(
                    tgl,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              const Expanded(flex: 1, child: SizedBox.shrink()),
            ],
          ),

          children: [
            const SizedBox(height: 4),
            _detailRow("Kelas", data["kelas"]),
            const SizedBox(height: 6),
            _detailRow("Keterangan", data["alasan"]),
            const SizedBox(height: 14),

            Row(
              children: [
                Expanded(child: _actionBtn("Tolak", Colors.red)),
                const SizedBox(width: 8),
                Expanded(child: _actionBtn("Terima", Colors.green)),
              ],
            ),

            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }

  Widget _detailRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label:",
          style: GoogleFonts.poppins(
            fontSize: 13.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 13,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _actionBtn(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.poppins(
            color: color,
            fontSize: 13.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
