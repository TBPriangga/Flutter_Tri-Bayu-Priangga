#Assets
- File yang di bundled dan di deployed bersamaan dengan aplikasi
- Tipe - tipe pada Assets : static data(JSON files), icons, images dam font file (ttf)

*Menentukan Assets*
- Flutter menggunakan pubspec.yaml
- pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan pada aplikasi
- Menggunakan karakter "/" untuk memasukkan semua assets dibawah 1 directory name
Contoh
assets: 
    - assets/my_icon.png
    - assets/background.jpg

*Image* 
- Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
- Flutter mendukung format JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP dan WBMP.
- Dapat menampilkan gambar melalui project asset maupun internet
Loading Images
- Menggunakan widget Image
- Membutuhkan properti Image dengan class AssetImage()
contoh kode
Column(
    children: const [
        Image(
            image: AssetImage('assets/background.jpg'),
        ),
        Image(
            image: AssetImage('assets/my_icon.png'),
        )
    ]
)

- Menggunakan method Image.asset, untuk mendapatkan image yang sudah ditambahkan dalam project
Note : Perbedaan menggunakan AssetImage dengan method Image.asset adalah AssetImage dapat lebih cepat untuk meload gambar, namun jika menggunakan Image.asset kode kita terlihat lebih bersih dan rapi

- Menggunakan method Image.network, mendapatkan daata image melalui internet dengan menggunakan string urlnya.
contoh kode
Column(
    children: (
        Image.asset('assets/background.jpg),
        Image.network('https://images.unsplash.com/photo-1560130803-aaadb4bc913e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80')
    )
)


*Font*
- Penggunaan font dengan style tertentu akan menjadi keunikan tersendiri pada suatu aplikasi
- Penentuan font oelh UI Designer
- Menerapkan font menggunakan custom font atau package 

Custom Font
Cara menggunakan custom font
- 1. Mencari dan mendownload font (https://fonts.google.com/)
- 2. Buatlah folder fonts sama seperti assets Lalu import file .ttf
- 3. Daftarkan font pada pubspec.yaml
cari pada bagian fonts lalu ganti 
dengan kode seperti berikut:
fonts:
    - family: Rowdies
    fonts:
        - asset: fonts/Rowdies-Bold.ttf
        - asset: fonts/Rowdies-Light.ttf
        - asset: fonts/Rowdies-Regular.ttf

- 4. Mengatur font sebagai default
pada material App
return const MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Rowdies'),
      home: imagePage(),
    );

- 5. Menggunakan font di spesifik widget, tanpa harus dijadikan pada themeData
Contoh Kode
Text(
    'City Light'
    Style: TextStyle(
        fontSize: 30,
        fontFamily: 'Rowdies'
    )
)

Font dari Package
Cara menggunakan font dari package: 
- 1. Menambahkan package google_fonts pada dependencies pubspec.yaml
contoh
dependencies:
    flutter:
        sdk: flutter
    google_fonts: ^2.2.0

note: Untuk menambahkan dependencies dapaat menggunakan ctrl + shift + p lalu cari 'dart add dependency

- 2. Import package pada file dart
- 3. Menggunakan font dengan memanggil GoogleFonts.namaFont()
contoh kode
Text(
    'City Light',
    style: GoogeFonts.rowdies(fontSize: 30),
),