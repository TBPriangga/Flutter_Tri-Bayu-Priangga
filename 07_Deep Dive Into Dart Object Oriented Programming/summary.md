# Deep Dive Into Dart Object Oriented Programming (exploration)
1. Constructor 
- digunakan untuk menginisialisasi objek dari sebuah class. 
- Constructor biasanya digunakan untuk melakukan tugas-tugas seperti inisialisasi atribut (properties) objek atau mengeksekusi kode tertentu ketika objek dibuat.
- Tidak memiliki return
- nama sama dengan nama Class

2. Inheritance
- untuk membuat class baru (class turunan atau subclass) berdasarkan class yang sudah ada (class induk atau superclass).
- Bertujuan agar kemampuan class yang ada dapat dimiliki oleh class baru.

3. Method Overriding
- Untuk membuat versi baru dari metode yang telah didefinisikan dalam class induk dengan implementasi yang berbeda
- Dilakukan pada class yang sudah melakukan inheritance

4. interface 
- interface digunakan untuk menentukan metode (methods) yang harus ada dalam class yang mengimplementasinya, tetapi tidak memberikan implementasi konkret. 
- interface menyediakan panduan tentang apa yang harus dilakukan oleh class yang mengikutinya, tetapi tidak mengatur bagaimana class tersebut melakukannya.
- Seluruh methodnya wajib di override

5. Abstract Class
- Abstract class memungkinkan untuk mendefinisikan metode (methods) yang harus ada dalam class-class turunan tanpa memberikan implementasi konkret
- Menggunakan extends
- tidak dapat dibuat object
- tidak semua methodnya harus di override

6. Polymorphism
- untuk memperlakukan objek dari class-class yang berbeda dengan cara yang serupa
- tipe data yang digunakan adalah super class
- dapat dilakukan pada class dengan extends ataupun implements

7. Generics
- untuk membuat struktur data dan fungsi yang bekerja dengan tipe data yang beragam tanpa kehilangan tipe data informasi saat kompilasi
- digunakan pada class ataupun fungsi
- dapat menerima data dengan tipe yang beda

8. Enkapsulasi
- Dapat mengatur aksesibilitas dari atribut dan metode tersebut sehingga hanya dapat diakses dan dimanipulasi melalui antarmuka yang ditentukan.
- Memungkinkan perubahan pada satu bagian kode tanpa mempengaruhi bagian yang lain
- Mengurangi kompleksitas dan potensi bug yang ada dalam kode


