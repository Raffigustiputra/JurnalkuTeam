import 'package:flutter/material.dart';
import 'package:jurnalku_tw/widgets/dropdown_appbar.dart';

class JurnalPembiasan extends StatefulWidget {
  const JurnalPembiasan({super.key});

  @override
  State<JurnalPembiasan> createState() => _JurnalPembiasanState();
}

class _JurnalPembiasanState extends State<JurnalPembiasan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: DropdownAppbar(title: "Jurnal Pembiasaan"),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              icon: const Icon(Icons.arrow_back_ios, size: 14),
              onPressed: () {},
              label: const Text(
                "Bulan Sebelumnya",
                style: TextStyle(fontSize: 12.5, color: Colors.white),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              "A. Pembiasaan harian",
              style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _legendDot(Colors.green),
                const SizedBox(width: 6),
                const Text("Sudah diisi", style: TextStyle(fontSize: 12)),
                const SizedBox(width: 18),
                _legendDot(Colors.grey),
                const SizedBox(width: 6),
                const Text("Belum diisi", style: TextStyle(fontSize: 12)),
                const SizedBox(width: 18),
                _legendDot(Colors.red),
                const SizedBox(width: 6),
                const Text("Tidak diisi", style: TextStyle(fontSize: 12)),
              ],
            ),
            const SizedBox(height: 18),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 31,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                int day = index + 1;
                Color border;
                Widget? icon;
                if (day == 1) {
                  border = Colors.red;
                  icon = const Icon(Icons.close, color: Colors.red, size: 18);
                } else if (day == 2) {
                  border = Colors.green;
                  icon = const Icon(Icons.check, color: Colors.green, size: 18);
                } else {
                  border = Colors.grey.shade300;
                  icon = null;
                }
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: border, width: 1.5),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          day.toString().padLeft(2, "0"),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      if (icon != null)
                        Positioned(top: 4, right: 4, child: icon),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 28),

            // Section B
            _sectionTile(
              title: "B. Pekerjaan yang dilakukan",
              children: [
                _jobCard(
                  pekerjaan: "Membuat UI Dashboard Absensi",
                  tanggal: "2 Desember 2025",
                  saksi: "Pak Deni",
                ),
                _jobCard(
                  pekerjaan: "Menambahkan validasi login",
                  tanggal: "3 Desember 2025",
                  saksi: "Bu Siti",
                ),
                _addButton("+ Tambah Pekerjaan"),
              ],
            ),
            const SizedBox(height: 12),

            // Section C
            _sectionTile(
              title: "C. Materi yang dipelajari",
              children: [
                _materiCard(
                  materi: "Flutter Layout Basics",
                  tanggal: "3 Desember 2025",
                  status: "Approved",
                  color: Colors.green,
                ),
                _materiCard(
                  materi: "State Management (Provider)",
                  tanggal: "4 Desember 2025",
                  status: "Pending",
                  color: Colors.orange,
                ),
                _addButton("+ Tambah Materi"),
              ],
            ),
            const SizedBox(height: 12),

            // Section D
            _sectionTile(
              title: "D. Poin",
              children: [
                _poinCard(
                  kategori: "(5) Mengerjakan project / update progress",
                  poin: {"M1": "5", "M2": "4", "M3": "3", "M4": "5"},
                ),
                _poinCard(
                  kategori: "(1–5) Poin dari laporan pengetahuan materi",
                  poin: {"M1": "2", "M2": "3", "M3": "1", "M4": "4"},
                ),
                _poinCard(
                  kategori: "Jumlah poin minggu ini",
                  poin: {"M1": "4", "M2": "5", "M3": "7", "M4": "2"},
                ),
                const SizedBox(height: 8),
                const Divider(),
                _summaryRow("Jumlah ceklist pembiasaan", "1"),
                _summaryRow("Total keseluruhan poin", "15"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ===================== HELPER WIDGETS ======================

Widget _legendDot(Color color) => Container(
  width: 12,
  height: 12,
  decoration: BoxDecoration(color: color, shape: BoxShape.circle),
);

Widget _sectionTile({required String title, required List<Widget> children}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        collapsedIconColor: Colors.black54,
        iconColor: Colors.blueAccent,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        childrenPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 8,
        ),
        children: children,
      ),
    );

// ===================== CARD LISTS =====================

Widget _jobCard({
  required String pekerjaan,
  required String tanggal,
  required String saksi,
}) => Container(
  margin: const EdgeInsets.only(bottom: 10),
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.black12),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        pekerjaan,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14.5),
      ),
      const SizedBox(height: 6),
      Row(
        children: [
          const Icon(Icons.calendar_today, size: 13, color: Colors.black54),
          const SizedBox(width: 4),
          Text(tanggal, style: const TextStyle(fontSize: 12)),
        ],
      ),
      const SizedBox(height: 4),
      Row(
        children: [
          const Icon(Icons.person_outline, size: 13, color: Colors.black54),
          const SizedBox(width: 4),
          Text("Saksi: $saksi", style: const TextStyle(fontSize: 12)),
        ],
      ),
    ],
  ),
);

Widget _materiCard({
  required String materi,
  required String tanggal,
  required String status,
  required Color color,
}) => Container(
  margin: const EdgeInsets.only(bottom: 10),
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.black12),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        materi,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14.5),
      ),
      const SizedBox(height: 6),
      Row(
        children: [
          const Icon(Icons.calendar_today, size: 13, color: Colors.black54),
          const SizedBox(width: 4),
          Text(tanggal, style: const TextStyle(fontSize: 12)),
        ],
      ),
      const SizedBox(height: 6),
      Row(
        children: [
          const Text("Status: ", style: TextStyle(fontSize: 12)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2.5),
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              status,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    ],
  ),
);

Widget _poinCard({
  required String kategori,
  required Map<String, String> poin,
}) => Container(
  margin: const EdgeInsets.only(bottom: 10),
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.black12),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        kategori,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13.5),
      ),
      const SizedBox(height: 8),
      Wrap(
        spacing: 10,
        runSpacing: 6,
        children: poin.entries
            .map(
              (e) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "${e.key}: ${e.value} poin",
                  style: const TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    ],
  ),
);

Widget _summaryRow(String label, String value) => Padding(
  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(label, style: const TextStyle(fontSize: 13)),
      Text(
        value,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.blue,
        ),
      ),
    ],
  ),
);

Widget _addButton(String text) => Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.only(top: 6),
    child: InkWell(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13.5,
          color: Colors.blueAccent,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  ),
);
