import 'package:flutter/material.dart';
import 'package:jurnalku_tw/dashboard.dart';

class DropdownAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  const DropdownAppbar({super.key, this.height = 55, required this.title});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.black12, width: 0.6)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
            icon: const Icon(
              Icons.home_outlined,
              size: 24,
              color: Colors.black45,
            ),
          ),

          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Pandu Putra Pratama",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
              const SizedBox(width: 8),

              // 🔽 Bagian menu dropdown dari foto profil
              PopupMenuButton<String>(
                offset: Offset(0, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                icon: const CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("assets/images/f.jpg"),
                ),
                onSelected: (value) {
                  switch (value) {
                    case 'Dashboard':
                      Navigator.pushNamed(context, '/dashboard');
                      break;
                    case 'Profil':
                      Navigator.pushNamed(context, '/profil');
                      break;
                    case 'Jelajahi':
                      Navigator.pushNamed(context, '/jelajahi');
                      break;
                    case 'Jurnal Pembiasaan':
                      Navigator.pushNamed(context, '/jurnal');
                      break;
                    case 'Permintaan Saksi':
                      Navigator.pushNamed(context, '/saksi');
                      break;
                    case 'Progress':
                      Navigator.pushNamed(context, '/progres');
                      break;
                    case 'Catatan Sikap':
                      Navigator.pushNamed(context, '/catatan');
                      break;
                    case 'Panduan Penggunaan':
                      Navigator.pushNamed(context, '/panduan');
                      break;
                    case 'Pengaturan Akun':
                      Navigator.pushNamed(context, '/pengaturan');
                      break;
                    case 'Log Out':
                      Navigator.pushReplacementNamed(context, '/jelajahilogin');
                      break;
                  }
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      value: 'Dashboard',
                      child: ListTile(
                        leading: Icon(Icons.home_outlined),
                        title: Text("Dashboard"),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Profil',
                      child: ListTile(
                        leading: Icon(Icons.person_outline),
                        title: Text("Profil"),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Jelajahi',
                      child: ListTile(
                        leading: Icon(Icons.explore_outlined),
                        title: Text("Jelajahi"),
                      ),
                    ),
                    const PopupMenuDivider(),
                    const PopupMenuItem(
                      value: 'Jurnal Pembiasaan',
                      child: ListTile(
                        leading: Icon(Icons.menu_book_outlined),
                        title: Text("Jurnal Pembiasaan"),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Permintaan Saksi',
                      child: ListTile(
                        leading: Icon(Icons.person_search_outlined),
                        title: Text("Permintaan Saksi"),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Progress',
                      child: ListTile(
                        leading: Icon(Icons.bar_chart_outlined),
                        title: Text("Progress"),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Catatan Sikap',
                      child: ListTile(
                        leading: Icon(Icons.warning_amber_outlined),
                        title: Text("Catatan Sikap"),
                      ),
                    ),
                    const PopupMenuDivider(),
                    const PopupMenuItem(
                      value: 'Panduan Penggunaan',
                      child: ListTile(
                        leading: Icon(Icons.menu_book),
                        title: Text("Panduan Penggunaan"),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Pengaturan Akun',
                      child: ListTile(
                        leading: Icon(Icons.settings_outlined),
                        title: Text("Pengaturan Akun"),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Log Out',
                      child: ListTile(
                        leading: Icon(Icons.logout_outlined),
                        title: Text("Log Out"),
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
