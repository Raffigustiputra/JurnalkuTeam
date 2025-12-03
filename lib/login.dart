import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 16), // tambah jarak
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Color(0xFF02398C)),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
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

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ============================
            // HEADER
            // ============================
            Container(
              width: double.infinity,
              height: 240,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/Bannerjurnal.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // ============================
            // FORM LOGIN
            // ============================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Masuk untuk memulai",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Jurnalku",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF02398C),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 22),

                  // USERNAME
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Username atau NIS",
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      const SizedBox(height: 6),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan username atau NIS",
                          filled: true,
                          fillColor: Color(0XFFf8fafc),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          prefixIcon: const Icon(Icons.person),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // PASSWORD
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Password",
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      const SizedBox(height: 6),

                      TextField(
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          hintText: "Masukkan password",
                          filled: true,
                          fillColor: Color(0xFFf8fafc),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            icon: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 22),

                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF02398C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Masuk",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Lupa password? Hubungi guru laboran.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 75),

            // ============================
            // FOOTER
            // ============================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  Text(
                    "Menyatukan Upaya untuk Kemajuan \n Siswa",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Jurnalku adalah aplikasi cerdas yang membantu \n guru dan siswa dalam memantau dan \n mengelola kompetensi keahlian siswa secara \n efektif.",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // ---- 6 INFO CARDS DI BAWAH FOOTER ----
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ), // <-- jarak kiri-kanan
              child: Column(
                children: [
                  InfoCard(
                    icon: Icons.school,
                    title: "Dirancang untuk Sekolah Kami",
                    description:
                        "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
                  ),
                  InfoCard(
                    icon: Icons.account_tree,
                    title: "Pemantauan yang Terstruktur",
                    description:
                        "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
                  ),
                  InfoCard(
                    icon: Icons.person,
                    title: "Fitur Praktis dan Bermanfaat",
                    description:
                        "Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.",
                  ),
                  InfoCard(
                    icon: Icons.school_outlined,
                    title: "Pengajuan Kompetensi oleh Siswa",
                    description:
                        "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.",
                  ),
                  InfoCard(
                    icon: Icons.edit_document,
                    title: "Validasi dan Tanda Tangan Guru",
                    description:
                        "Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.",
                  ),
                  InfoCard(
                    icon: Icons.laptop_mac,
                    title: "Pantauan Real-Time dan Transparan",
                    description:
                        "Monitoring langsung, menciptakan lingkungan belajar yang efisien.",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              color: const Color(0xFF02398c),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 18),
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Text(
                    "© GEN-28 PPLG SMK Wikrama Bogor. All Rights \nReserved.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
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
}

// ============================
// MENU CARD COMPONENT
// ============================
class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Color(0xFF02398C)),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF02398C),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
