#Flutter Platform Widget
Ada 2 Widget dengan gaya yang berbeda pada Android dan iOS
1. Material App
Widget yang digunakan pada sistem Android adlaah MaterialApp, gunakan import
package:flutter/material.dart.
* Struktur
Widget yang pertama kali dibuka adalah home. 
theme: untuk mengatur tema aplikasi
- home: const HomePage(), halaman utama
Mengatur halaman dapat dilakukan dengan menggunakan routes dan initialRoute.
- initialRoute: 'home', routme utama
- routes: {
    'home': (_) => consst HomePage(), 
}, Untuk mendaftkarkan halaman pada routes

- appBar: AppBar(), Bar menu bagian atas halaman
- drawer: Drawer(), Menu bagian samping halaman
- body: Bagian utama halaman
- bottomNavigationBar: BottomNavigationBar(), Menu bagian bawah halaman
* Scaffold
Widget dasar untuk membangun sebuah halaman pada Material APP adalah MaterialApp->Scaffold

2. CupertinoApp
Widget yang digunakan pada sistem iOS, dapat digunakan dengan import package:flutter/cupertino.dart
* Struktur
-  CupertinoApp(
    theme: _themeDark, Mengatur tema aplikasi
    home: const HomePage(), Halaman Utama
)

Widget dasar untuk membangun sebuah halaman pada CupertinoApp->CupertinoPageScaffold
- CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(), bar menu bagian atas halaman
    child: bagian utama halaman
)

3. Membuat tema gelap
- Untuk dapat membuat tema gelap gunakan variabel _themeDark karna cupertino tidak menyediakan ThemeDart.dark() seperti pada material
final _themeDark = const CupertinoThemeData.raw(
    Brightness.dark,
    null,
    null,
    null,
    null,
    null,
);