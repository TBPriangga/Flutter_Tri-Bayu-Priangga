# Installation – Command Line Interface
1. Flutter CLI
Digunakan untuk dapat berinteraksi dengan Flutter SDK menggunakan terminal

2. Important CLI Commands
- Flutter Doctor
Digunakan untuk menampilkan informasi Software yang dibutuhkan oleh Flutter
- Flutter Create
Digunakan untuk membuat project aplikasi flutter
- Flutter Run
Digunakan untuk menjalankan project aplikasi pada device yang tersedia
- Flutter Emulator
Untuk menampilkan daftar emulator yang telah terinstall dan menampilkan option untuk menjalankan emulator tersebut/ membuat emulator baru
- Flutter Channel
Digunakan untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini
- Flutter Pub
Ada 2 macam syntax yang pertama
* flutter pub add <nama_package> Digunakan untuk menambahkan packages ke dependencies yang berada pada pubspec.yaml
* flutter pub get digunakan untuk mendownload semua package yang ada pada dependendencies yang ada pada pubsepc.yaml
- Flutter Build 
digunakan untuk memproduksi sebuah file aplikasi untuk kebutuhan deploy / publis ke Playstore/AppStore.
- Flutter Clean 
digunakan untuk menghapus folder build yang dihasilkan saat akan menjalankan aplikasi pada emulator ddengan menggunakan perintah ini dapat memperkecil ukuran project

3. Packages Management
Flutter mendukung sharing packages, packages ini dibuat oleh developers lain, fungsinya untuk mempercepat pengembangan aplikasi karna tidak perlu membuat dari 0. Dapat mencari packages pada website pub.dev
*Cara menambahkannya 
- Cari package yang ingin digunakan
- copy baris dependencies pada bagian installing
- buka pubspec.yml
- paste code pada dependencies pubspec.yaml
- run flutter pub get pada terminal
- import package pada file dart agar bisa digunakan 