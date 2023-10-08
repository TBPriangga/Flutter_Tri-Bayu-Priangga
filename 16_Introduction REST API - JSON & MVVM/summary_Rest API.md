#Rest Api 
- Representational State Transfer Application programming Interface
- Arsitektur yang memisahkan tampilan dengan proses bisnis
- Bagian tampilan dengan proses bsisnis berikirm data melalui HTTP Request
1. HTTP Merupakan protokol yang digunakan untuk berkirim data pada internet
2. Pola Komunikasi
- Client mengirim request dan server mengolah dengan membealas memberi respons
3. Struktur pada response
- Status code 
- Header
- Body
4. Dio
- untuk HTTP Client dimanfaatkan untuk melakukan Rest API
5. Serialiasasi JSON
- Cara penulisan data -> Java Script Object Notation -> Umum digunakan pada REST API
- Mengubah strukutr data ke bentuk json (Map/List -> Serialiasasi -> JSON)
- Menggunakan fungsi jsonEncode dari package dart:convert
6. Deserialisasi JSON
- Mengubah bentuk JSON ke Struktur data (JSON -> Deserialisasi -> Mao/List)
- Menggunakan fungsi jsonDecode