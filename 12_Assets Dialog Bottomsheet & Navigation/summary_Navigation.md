#Navigation
1. Apa itu Navigation?
- Navigation adalah perpindahan halaman satu ke halaman yang lain
2. Navigation Dasar
- Untuk berpindah halaman dapat menggunakan Navigator.push()
- dan untuk kembali ke halaman sebelumnya dapat menggunakan Navigator.pop()
Berikut adalah contoh kode sederhana memindah halaman
body: Center(
        child: ElevatedButton(
          child: const Text("Go To About Page"),
          onPressed: () {
            //Saat tombol ditekan maka akan dialihkan ke halaman About
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const AboutScreen(
                  parameter: 'Contoh Data yang akan ikut di push',
                ),
              ),
            );
          },
        ),
      ),

dan buat halaman barunya
class AboutScreen extends StatelessWidget {
  final String parameter; // jangan lupakan tambahkan var parameter
  const AboutScreen({Key? key, required this.parameter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Screen"),
        centerTitle: true,
        actions: const [],
      ),
      body: Column(
        children: [Text(parameter)], //Mencetak parameter dari page sebelumnya
      ),
    );
  }
}

3. Navigation dengan Named Routes
- Tiap halaman memiliki alamat yang disebut route
- Perpindahan halaman menggunakan Navigator.pushNamed()
- Untuk kembali ke halaman sebelumnya menggunakan Navigator.pop()

Untuk dapat menggunakan Route
Contoh kode
class RouteApp extends StatelessWidget {
  const RouteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Tambahkan initialRoute dan routes pada MaterialAppnya
    return MaterialApp(
      initialRoute: '/', //Merupakan penentu halaman yang pertama kali akan dibuka
      routes: {  //Daftar Halaman yang dapat dibuka
        '/': (_) => const RoutesPage(), //Tiap Route adalah fungsi yang membentuk halaman
        '/about': (_) => const AboutRouteScreen(),
      },
    );
  }
}

Perpindahan Halaman
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To About Page"),
          onPressed: () {
            //Saat tombol ditekan maka akan dialihkan ke halaman dengan nama /About
            Navigator.of(context).pushNamed('/about');

Mengirim Data ke halaman baru
body: Center(
        child: ElevatedButton(
          child: const Text("Go To About Page"),
          onPressed: () {
            //Saat tombol ditekan maka akan dialihkan ke halaman About
            Navigator.of(context).pushNamed(
              '/about',
              arguments: 'Data dari home Screen', // tambahkan arguments
            );
          },
        ),
      ),
Lalu pada Halaman barunya tambahkan
class AboutRouteScreen extends StatelessWidget {
  const AboutRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parameter = ModalRoute.of(context)!.settings.arguments as String; //Untuk mengambil parameter yang dikirim melalui arguments

    return Scaffold(
      appBar: AppBar(
        title: const Text("About Screen"),
        centerTitle: true,
        actions: [],
      ),
      body: Column(
        children: [
          Text(parameter), /Menampilkan data
        ],
      ),
    );
  }
}