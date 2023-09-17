# Flutter Form
1. Form
- Form digunakan untuk menerima isian data dari user
- Isian datanya dapat lebih dari 1

* Membuat Form
- Menggunakan StatefulWidget
- Keadaan form disimpan menggunakan GlobalKey<FormState>
contoh kode
//property
var formKey = GlobalKey<FormState>();

//build
Form(
    key: formKey,
    child: inputWidgets,
);

2. Input
* TextField
- Untuk menerima isian data dari pengguna
- Isian data dapat lebih dari 1
- Data diambil menggunakan TextEditingController
- Isi datanya berupa teks
contoh kode
//property
var inputController = TextEditingController();

//build
TextField(
    controller: inputController,
);

* Radio
- Untuk memberi opsi kepada pengguna
- Hanya dapat memilih 1 opsi
- Data yang diambil menggunakan property dengan tipe data sesuai dengan value pada radio
contoh kode 
//property
var radioValue = '';

//build
LisTile(
    leading: Radio<Strings>(
    value: 'Laki-Laki',
    groupValue: radioValue,
    onChanged: (String? value){
        setState((){
            radioValue  = value ?? '';
        });
    },
);
title: const Text('Laki-Laki')
),
LisTile(
    leading: Radio<Strings>(
    value: 'Perempuan',
    groupValue: radioValue,
    onChanged: (String? value){
        setState((){
            radioValue  = value ?? '';
        });
    },
);
title: const Text('Perempuan')
),

* Checkbox
- Memberikan opsi kepada user
- User dapat memilih beberapa opsi
- Data diambil menggunakan property bertipe bool
contoh kode
//property
var checkValue = false

/build
ListTile(
    leading: Checkbox(
        value: checkValue,
        onChanged: (bool? value){
            setState((){
                checkValue = value ?? false;
            });
        }
    ),
    title: const Text('Setuju / Tidak Setuju')
);

* Dropdown Button
- Memberikan opsi pada user
- Hanya dapat memilih 1 opsi
- Opsi tidak akan ditampilkan diawal, hanya tampil saat ditekan
- Data diambil menggunakan property dengan tipe data sesuai value pada DropdownMenuItem
Contoh Kode
DropdownButton(
    value: dropdownValue,
    onChanged: (int? value){
        setState(() {
            dropdownValue = value ?? 0;
        }); 
    },
    items: const [
        DropdownMenuItem(
            value: 0,
            child: Text('Pilih ...'),
        ),
        DropdownMenuItem(
            value: 1,
            child: Text('Satu'),
        ),
        DropdownMenuItem(
            value: 2,
            child: Text('Dua'),
        ),
    ],
);
 
* ElevatedButton
 - Bersifat seperti tombol
 - Dapat melakukan sesuatu saat ditekan
 contoh kode 
 ElevatedButton(
    onPressed: () {},
    child: const Text ('Submit'),
 );

 * IconButton
 - Tombol hanya akan menampilkan icon
 - Jika ditekan, akan menajalankan onPressed
 Contoh kode
 IconButton(
    onPressed: () {},
    icon: const Icon(Icons.add),
 ),