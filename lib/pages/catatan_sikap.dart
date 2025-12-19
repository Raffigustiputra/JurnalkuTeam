import 'package:flutter/material.dart';
import 'package:jurnalku_tw/widgets/dropdown_appbar.dart';

class CatatanSikap extends StatelessWidget {
  const CatatanSikap({super.key});

  static List<Map<String, String>> catatanSikap = [

    {
      "no": "01",
      "kategori": "Sikap",
      "catatan": "Anak sangat sopan",
      "status": "Sudah diperbaiki",
      "dilaporkan": "Bu sari",
      "update": "10-10-2024",
    },

    {
      "no": "02",
      "kategori": "Sikap",
      "catatan": "Anak sangat sopan",
      "status": "Sudah diperbaiki",
      "dilaporkan": "Bu rina",
      "update": "21-9-2024",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DropdownAppbar(title:"Catatan Sikap Saya",),

      // ===============================
      // BODY
      // ===============================
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Catatan Sikap Saya",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 20),

              // PERINGATAN
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFBEA),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFFFFE08A),
                    width: 1,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.warning_amber_rounded,
                      color: Color(0xFFCC7A00),
                      size: 28,
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Perhatian",
                            style: TextStyle(
                              color: Color(0xFFB56A00),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Jika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan untuk mengajukan klarifikasi.",
                            style: TextStyle(
                              color: Color(0xFFB56A00),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // STAT CARD
              Column(
                children: [
                  buildStatCard(
                    "Total Catatan",
                    catatanSikap.length,
                    Icons.insert_drive_file_outlined,
                    const Color(0xFFE8F1FF),
                    const Color(0xFF2F6BFF),
                  ),
                  const SizedBox(height: 12),

                  buildStatCard(
                    "Dalam Perbaikan",
                    catatanSikap.where((e) => e["status"] == "Dalam perbaikan").length,
                    Icons.bolt,
                    const Color(0xFFFFF4C9),
                    const Color(0xFFCE9000),
                  ),
                  const SizedBox(height: 12),

                  buildStatCard(
                    "Sudah Berubah",
                    catatanSikap.where((e) => e["status"] == "Sudah diperbaiki").length,
                    Icons.check_circle_outline,
                    const Color(0xFFE4FFE8),
                    const Color(0xFF3BAA47),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // ===============================
              // LIST CATATAN (EXPANSIONTILE)
              // ===============================
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF7F9FC),
                        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      child: const Text(
                        "Daftar Catatan Sikap",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    catatanSikap.isEmpty
                        ? _buildEmptyState()
                        : Column(
                            children: catatanSikap.map((item) {
                              return _buildExpansionItem(
                                no: int.parse(item["no"]!),
                                kategori: item["kategori"]!,
                                catatan: item["catatan"]!,
                                status: item["status"]!,
                                tanggal: item["dilaporkan"]!,
                                updateTerakhir: item["update"]!,
                              );
                            }).toList(),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ===============================
  // EXPANSION TILE ITEM
  // ===============================
  Widget _buildExpansionItem({
    required int no,
    required String kategori,
    required String catatan,
    required String status,
    required String tanggal,
    required String updateTerakhir,
  }) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 16),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      title: Text("$no. $kategori", style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
      subtitle: Text(catatan, maxLines: 1, overflow: TextOverflow.ellipsis),
      children: [
        _buildDetailItem("Catatan", catatan),
        _buildDetailItem("Status", status),
        _buildDetailItem("Dilaporkan", tanggal),
        _buildDetailItem("Update Terakhir", updateTerakhir),
        const SizedBox(height: 10),

        
      ],
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Icon(Icons.check_circle_outline, size: 60, color: Colors.grey.shade400),
          const SizedBox(height: 12),
          Text(
            "Tidak ada catatan",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey.shade600),
          ),
          const SizedBox(height: 6),
          Text(
            "Belum ada catatan sikap yang dilaporkan",
            style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }

  // ===============================
  // STAT CARD
  // ===============================
  static Widget buildStatCard(
    String title,
    int value,
    IconData icon,
    Color bgColor,
    Color iconColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500)),
              const SizedBox(height: 6),
              Text(value.toString(), style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87)),
            ],
          ),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
            child: Icon(icon, color: iconColor, size: 22),
          ),
        ],
      ),
    );
  }
}