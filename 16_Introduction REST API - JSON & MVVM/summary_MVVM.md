#MVVM Architecture
1. MVVM -> Model-View ViewModel
Memisahkan logic dengan tampilan (view) ke dalam ViewModel
- Kentungan 1 Reusabillity
 Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan viewModel yang sama
- Keuntungan 2 Maintainability
Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic
- Keuntungan 3 Testability
 Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas Pengujian
 2. Untuk Melakukan MVVM
 - Struktur Direktorinya
 - Model memiliki 2 bagian yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
 - Tiap screen diletakkan dalam sebuah direktori yang didalamnya terdapat view dan ViewModel

3. Model 
- Bentuk data yang digunakan, dibuat dalam bentuk class
- Data - data yang dimuat, diletakkan pada property
- Model API
-
4. ViewModel
- Menyimpan data data dan logic yang diperlukan halaman ContactScreen
- Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga
- Untuk mendaftarkan ViewModel dapat menggunakan MultiProvider agar dapat menggunakan banyak ViewModel
- MaterialApp sebagai child utama
5. View 
-Menggunakan StatefulWidget
- Menampilkan data di view
- letakkan apda bagian build
- Menggunakan getters yang ada pada ViewModel
- Data dapat langsung ditampilkan pada widgets