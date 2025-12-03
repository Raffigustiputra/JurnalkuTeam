import 'package:flutter/material.dart';

class GantiPassword extends StatelessWidget {
  const GantiPassword({super.key});

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
              onTap: () {
                Navigator.pop(context);
              },
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
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 18),

            // 🔹 Judul Halaman
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
                        text: "Ganti \n Password",
                        style: TextStyle(color: Colors.blue.shade700),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            // 🔹 Deskripsi
            Text(
              "Halaman ini memberikan panduan langkah demi langkah untuk mengganti password akun Anda. "
              "Ikuti instruksi yang diberikan untuk memastikan bahwa password baru Anda berhasil disimpan "
              "dan akun Anda tetap aman.",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),

            SizedBox(height: 16),

            // 🔹 Step-by-step
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Klik pada bagian Pengaturan Akun,",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                  Text(
                    "2. Lalu isi field Password baru",
                    style: TextStyle(fontSize: 15, height: 1.7),
                  ),
                  Text(
                    "3. Jika sudah, lalu klik Simpan",
                    style: TextStyle(fontSize: 15, height: 1.7),
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
