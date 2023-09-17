#Flutter Layout
1. Single Child Layout
* Container
- Membuat sebuah box 
- Dapat membungkus widget lain seperti child 
- Box ini mempunyai margin, padding dan border(style)
Contoh penggunaan Container
Container(
    margin: const EdgeInsets.all(10), //Jarak antara Container dengan bagian laur container
    padding: const EdgeInsets.all(10), //Jarak antara child dengan Container
    decoration: BoxDecoration( //Styling
        border: Border.all(), //menambahkan border
    ),
    child: const Text('Hallo'), //Menambahkan properti child untuk menamabhkan widget lain yang berada didalam container.
    // didalam child ada widget text
),

* Center 
- sama seperti container membuat sebuah box
- dapat juga membungkus widget lain, 
- Memenuhi lebar dan tinggi ruang di luarnya
- dimana setiap widget yang dimasukkan akan selalu berada ditengah
Contoh penggunaan Center
Center(
    child: Text('Hello'),
);

*SizedBox
- Sama seperti container membuat sebuah box
- dan dapat membungkus widget lain
- Box yang dibuat dari widget ini dapat diatur lebar dan tingginya
- Widget ini lebih sederhana dari Container
- Widget ini tugasnya hanya mengatur lebar dan tinggi dari childnya
Contoh
SizedBox(
    width: 100,
    height: 150,
    child: Text('Hallo'),
);

2. Multi Child Layout
* Column
- Untuk mengatur widget secara Vertikal
Contoh penggunaan
Column(
    children: const [
        Text(teks),
        Text(teks),
        Text(teks),
        Text(teks),
    ],
);
Contoh Lain
Column(
    children: [
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('H'),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('A'),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('L'),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('O'),
        ),
    ],
);

* Row
- Mengatur widget secara horizontal
Penulisannya sama seperti Column
Contoh
Row(
    children: const [
        Text(teks),
        Text(teks),
        Text(teks),
        Text(teks),
    ],
);
Contoh lain
Row(
    children: [
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('H'),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('A'),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('L'),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('O'),
        ),
    ],
);

* List View
- Untuk mengatur widget dalam bentuk list
- Yang memiliki kemampuan scroll jika ukuran row/columnya sudah melebihi layar
Contoh Penggunaan
ListView(
    children: [
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text('H')
            decoration: BoxDecoration(border: Border.all()),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text('H')
            decoration: BoxDecoration(border: Border.all()),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text('H')
            decoration: BoxDecoration(border: Border.all()),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Text('H')
            decoration: BoxDecoration(border: Border.all()),
        ),
    ],
);

* Grid View
- Untuk mengatur widget kedalam bentuk galeri
Contoh 
GridView.count(
    crossAxisCount: 2, //bebas
    chidlren: [],
);
Contoh lain
GridView.count(
    crossAxisCount: 2,
    children: [
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('H')
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('A')
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('L')
        ),
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text('O')
        ),
    ],
)