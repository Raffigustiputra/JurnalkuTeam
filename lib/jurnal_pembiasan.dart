import 'package:flutter/material.dart';

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
                  const Icon(
                    Icons.home_outlined,
                    size: 18,
                    color: Colors.black45,
                  ),
                  const SizedBox(width: 6),
                  const Icon(
                    Icons.chevron_right,
                    size: 18,
                    color: Colors.black38,
                  ),
                  const SizedBox(width: 6),
                  Builder(
                    builder: (context) {
                      double width = MediaQuery.of(context).size.width;
                      if (width < 500) return const SizedBox.shrink();
                      return const Text(
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
                  const Icon(
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

      // ========================= BODY =========================
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ----_BTN BULAN----
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

            // --- Judul A
            const Text(
              "A. Pembiasaan harian",
              style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 10),

            // ---- Legend
            Row(
              children: [
                _legendDot(Colors.green),
                const SizedBox(width: 6),
                const Text("Sudah diisi", style: TextStyle(fontSize: 12)),

                SizedBox(width: 18),
                _legendDot(Colors.grey.shade400),
                const SizedBox(width: 6),
                const Text("Belum diisi", style: TextStyle(fontSize: 12)),

                SizedBox(width: 18),
                _legendDot(Colors.red),
                const SizedBox(width: 6),
                const Text("Tidak diisi", style: TextStyle(fontSize: 12)),
              ],
            ),

            const SizedBox(height: 18),

            // ---- GRID HARI
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

            // =================== BAGIAN B =====================
            const Text(
              "B. Pekerjaan yang dilakukan",
              style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  // Header tabel
                  Container(
                    decoration: const BoxDecoration(color: Color(0xFFE2E8F0)),
                    child: Row(
                      children: [
                        _tableCellHeader("Pekerjaan", flex: 2),
                        _tableCellHeader("Tgl"),
                        _tableCellHeader("Saksi"),
                      ],
                    ),
                  ),

                  // isi kosong
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 12,
                    ),
                    child: const Text(
                      "Belum ada pekerjaan yang diinput.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),

                  const Divider(height: 0),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      child: const Text(
                        "+ Tambah Pekerjaan",
                        style: TextStyle(
                          fontSize: 13.5,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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
}

// ===================== HELPER WIDGET ======================

Widget _legendDot(Color color) {
  return Container(
    width: 12,
    height: 12,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}

Widget _tableCellHeader(String text, {int flex = 1}) {
  return Expanded(
    flex: flex,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
      ),
    ),
  );
}
