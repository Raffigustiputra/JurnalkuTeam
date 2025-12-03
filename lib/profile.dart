import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const String _coverImagePath = 'assets/images/wikrama.png';
  static const String _profileImagePath = 'assets/images/profile.png';
  static const String _portfolioImagePath = 'assets/images/portfolio_item.png';
  static const String _sertifikatImagePath =
      'assets/images/sertifikat_item.png';

  int _selectedTab = 0;

  PreferredSizeWidget _buildCustomAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
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
            mainAxisAlignment: MainAxisAlignment.center,
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
              child: Image.asset(
                _profileImagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.person, color: Colors.grey),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      children: [
        SizedBox(
          height: 120,
          width: double.infinity,
          child: Image.asset(
            _coverImagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.blue[800],
                child: const Center(
                  child: Icon(Icons.photo, color: Colors.white, size: 40),
                ),
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Transform.translate(
                offset: const Offset(0, -50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              _profileImagePath,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.grey[300],
                                  child: const Icon(
                                    Icons.person,
                                    color: Colors.grey,
                                    size: 40,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.blue.shade800,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Transform.translate(
                offset: const Offset(0, -35),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Raffi Gusti Putra',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '12309972 | PPLG XII-5 | Wik 4',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.share, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabBar() {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(child: _buildTabItem('Overview', 0)),
          Expanded(child: _buildTabItem('Portfolio', 1, count: 10)),
          Expanded(child: _buildTabItem('Sertifikat', 2, count: 1)),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title, int index, {int? count}) {
    bool isSelected = _selectedTab == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTab = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Color(0xFF2563eb) : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            // === Badge bulat ===
            if (count != null) ...[
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Color(0xFFE5E7EB), // warna bulatan
                  shape: BoxShape.circle,
                ),
                child: Text(
                  count.toString(),
                  style: const TextStyle(
                    color: Color(0xFF4b5563), // warna teks angka
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildItemCard(
    String title,
    String imagePath, {
    bool isPortfolio = false,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 180,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.photo, color: Colors.grey[400], size: 40),
                        const SizedBox(height: 8),
                        Text(
                          'Gambar tidak tersedia',
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      isPortfolio ? '6 Hari Yang Lalu' : '3 bulan yang lalu',
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.link_outlined,
                        size: 14,
                        color: Colors.blue,
                      ),
                      Text(
                        'Lihat Project',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Lihat Detail',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue.shade800,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDocumentItem(
    String title,
    String subtitle,
    String buttonText,
    Color buttonColor,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.folder_open, size: 20),
                  label: Text(buttonText),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.file_upload_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          if (title == 'Kartu Pelajar')
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 16,
                    color: Colors.orange.shade800,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Kartu pelajar dapat dilihat oleh anda dan guru',
                    style: TextStyle(fontSize: 13, color: Colors.deepOrange),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSocialMediaItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.link, color: Colors.grey),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  link,
                  style: TextStyle(fontSize: 14, color: Colors.blue.shade800),
                ),
              ],
            ),
          ),
          const Icon(Icons.open_in_new, size: 18, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildOverviewSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text('Tambah', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Text('|', style: TextStyle(color: Colors.black)),
              const SizedBox(width: 10),
              Text(
                'Lihat Semua',
                style: TextStyle(color: Colors.blue.shade800),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewContent() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _buildProfileHeader(),

        _buildTabBar(),

        _buildOverviewSectionHeader('Portfolio Terbaru'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: _buildItemCard(
            'Portofolio',
            _portfolioImagePath,
            isPortfolio: true,
          ),
        ),

        const SizedBox(height: 24),

        _buildOverviewSectionHeader('Sertifikat Terbaru'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: _buildItemCard('Coding Camp Sertifikat', _sertifikatImagePath),
        ),

        const Divider(height: 40, thickness: 8, color: Color(0xFFF3F3F3)),

        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'Dokumen',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDocumentItem(
                'Curriculum Vitae',
                'Dokumen CV siswa',
                'Lihat CV',
                Colors.blue.shade800,
              ),
              const SizedBox(height: 20),
              _buildDocumentItem(
                'Kartu Pelajar',
                'Kartu identitas siswa',
                'Lihat Kartu Pelajar',
                Colors.green.shade600,
              ),
            ],
          ),
        ),

        const Divider(height: 40, thickness: 8, color: Color(0xFFF3F3F3)),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Media Sosial',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit, size: 18, color: Colors.black),
                label: const Text(
                  'Edit',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              _buildSocialMediaItem(
                'Instagram',
                'https://www.instagram.com/rapiiiii14/',
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildPortfolioContent() {
    return ListView(
      children: [
        _buildProfileHeader(),

        _buildTabBar(),

        _buildItemCard(
          'Portfolio Website',
          _portfolioImagePath,
          isPortfolio: true,
        ),
        const SizedBox(height: 16),
        _buildItemCard(
          'Frontend Development',
          _portfolioImagePath,
          isPortfolio: true,
        ),
        const SizedBox(height: 16),
        _buildItemCard(
          'Internet Of Things',
          _portfolioImagePath,
          isPortfolio: true,
        ),
        const SizedBox(height: 16),
        _buildItemCard('Backend', _portfolioImagePath, isPortfolio: true),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildSertifikatContent() {
    return ListView(
      children: [
        _buildProfileHeader(),

        _buildTabBar(),

        _buildItemCard(
          'Sertifikat Fullstack Web Development',
          _sertifikatImagePath,
        ),
        const SizedBox(height: 16),
        _buildItemCard(
          'Sertifikat Mobile App Development (Flutter)',
          _sertifikatImagePath,
        ),
        const SizedBox(height: 16),
        _buildItemCard(
          'Sertifikat UI/UX Design Fundamentals',
          _sertifikatImagePath,
        ),
        const SizedBox(height: 16),
        _buildItemCard(
          'Sertifikat Database Management & SQL',
          _sertifikatImagePath,
        ),
        const SizedBox(height: 16),
        _buildItemCard(
          'Sertifikat Cyber Security Awareness',
          _sertifikatImagePath,
        ),
        const SizedBox(height: 16),
        _buildItemCard(
          'Sertifikat Cloud Computing Essentials',
          _sertifikatImagePath,
        ),
        const SizedBox(height: 16),
        _buildItemCard(
          'Sertifikat Problem Solving & Critical Thinking',
          _sertifikatImagePath,
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildCurrentContent() {
    switch (_selectedTab) {
      case 0:
        return _buildOverviewContent();
      case 1:
        return _buildPortfolioContent();
      case 2:
        return _buildSertifikatContent();
      default:
        return _buildOverviewContent();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildCustomAppBar(context),
      body: Container(
        color: Colors.white, // paksa semua background putih
        child: _buildCurrentContent(),
      ),
    );
  }
}
