# Flutter Global State Management
1. Pengertian State
- State
- State adalah data yang dapat dibaca pada saat pembuatan widget
- State dapat berubah saat widget sedang aktif
- State hanya dapat dimiliki oleh StatefulWidget

Memanfaatkan State 
Ketika ingin membuat sebuah widget yang ingin memiliki perubahan, dengan cara
- Kita dapat menyimpan nilainya pada sebuah property 
- lalu jika ada perubahan state dapat digunakan oleh widget saat dibuild
Contoh kode
var number = 0; //Property
Text('$number');

Mengubah State
- Untuk menggunakannya, dapat menggunakan method setState
contoh kode
ElevatedButton(
    child: const Text('Tambah),
    onPressed: () {
        setState(() {
            number = number + 1;
        }) ;
    }
);

2. Global State
- Global state adalah state yang dapat digunakan diseluruh aplikasi
Mengapa perlu global state? 
- agar seluruh widget dapat memeanfaatkan state yang sama dengan mudah

- Perlu diinstal agar dapat digunakan <- *Provider* -> State Management

Instalasi Provider
- Menambahkan package provider pada bagian dependencies dalam file pubspec.yaml
- lalu menjalankan perintah flutter pub get