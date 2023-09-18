import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

class advanceFormEksplorPage extends StatefulWidget {
  const advanceFormEksplorPage({Key? key}) : super(key: key);

  @override
  _advanceFormEksplorPageState createState() => _advanceFormEksplorPageState();
}

class _advanceFormEksplorPageState extends State<advanceFormEksplorPage> {
  List<Contact> contacts = []; // List untuk menyimpan kontak.
  final TextEditingController nameController =
      TextEditingController(); // Controller untuk input nama.
  final TextEditingController phoneController =
      TextEditingController(); // Controller untuk input nomor telepon.
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>(); // GlobalKey untuk mengelola bentuk.

  int selectedContactIndex =
      -1; // Indeks kontak yang sedang dipilih atau diedit.
  bool isEditing = false; // Status apakah dalam mode pengeditan.

  TextEditingController editNameController =
      TextEditingController(); // Controller untuk input nama saat pengeditan.
  TextEditingController editPhoneController =
      TextEditingController(); // Controller untuk input nomor telepon saat pengeditan.

  DateTime _dueDate = DateTime.now(); // Tanggal jatuh tempo untuk kontak.
  final currentDate = DateTime.now(); // Tanggal saat ini.

  Color _currentColor = Colors.orange; // Warna yang dipilih.

  PlatformFile? _selectedFile; // File yang dipilih oleh pengguna.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contacts"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Icon(
                      Icons.developer_mode,
                      size: 24.0,
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    const Text(
                      "Create New Contacts",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    const Text(
                      "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFE7E0EC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      padding:
                          const EdgeInsets.only(right: 10, left: 10, top: 10),
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Name"),
                          TextFormField(
                            controller: nameController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Nama harus diisi";
                              }

                              final words = value.split(' ');
                              if (words.length < 2) {
                                return 'Nama harus terdiri dari minimal 2 kata';
                              }

                              for (final word in words) {
                                if (word[0] != word[0].toUpperCase()) {
                                  return 'Nama harus diawali dengan huruf kapital';
                                }

                                if (RegExp(r'[0-9!@#%^&*(),.?":{}|<>]')
                                    .hasMatch(word)) {
                                  return 'Nama tidak boleh mengandung angka atau karakter khusus';
                                }
                              }
                              return null; // Validasi berhasil
                            },
                            decoration: const InputDecoration(
                              hintText: 'Insert Your Name',
                            ),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFE7E0EC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      padding:
                          const EdgeInsets.only(right: 10, left: 10, top: 10),
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Nomor"),
                          TextFormField(
                            controller: phoneController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Nomor harus diisi";
                              }

                              if (!RegExp(r'^0[0-9]{7,14}$').hasMatch(value)) {
                                return 'Nomor tidak valid. Nomor telepon harus dimulai dengan 0 dan terdiri dari 8-15 digit angka';
                              }

                              return null; //Validasi berhasil
                            },
                            decoration: const InputDecoration(
                              hintText: '+62 ....',
                            ),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    buildDatePicker(
                        context), // Memanggil fungsi untuk membangun date picker.
                    const SizedBox(
                      height: 14.0,
                    ),
                    buildColorPicker(
                        context), // Memanggil fungsi untuk membangun color picker.
                    const SizedBox(
                      height: 8.0,
                    ),
                    buildFilePicker(), // Memanggil fungsi untuk membangun file picker.
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: const Color(0xFF6750A4),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              final name = nameController.text;
                              final phone = phoneController.text;
                              if (name.isNotEmpty && phone.isNotEmpty) {
                                setState(() {
                                  if (isEditing && selectedContactIndex >= 0) {
                                    // Memperbarui kontak yang sedang diedit
                                    contacts[selectedContactIndex].name = name;
                                    contacts[selectedContactIndex].phone =
                                        phone;
                                    contacts[selectedContactIndex].dueDate =
                                        _dueDate; // Menyimpan nilai DatePicker
                                    contacts[selectedContactIndex].color =
                                        _currentColor; // Menyimpan nilai ColorPicker
                                    contacts[selectedContactIndex]
                                            .selectedFile =
                                        _selectedFile; // Menyimpan nilai FilePicker
                                    isEditing = false;
                                    selectedContactIndex = -1;
                                  } else {
                                    // Menambahkan kontak baru
                                    contacts.add(Contact(
                                      name: name,
                                      phone: phone,
                                      dueDate:
                                          _dueDate, // Menyimpan nilai DatePicker
                                      color:
                                          _currentColor, // Menyimpan nilai ColorPicker
                                      selectedFile:
                                          _selectedFile, // Menyimpan nilai FilePicker
                                    ));
                                  }
                                  nameController.clear();
                                  phoneController.clear();

                                  // Menampilkan data ke konsol
                                  print('Name: $name');
                                  print('Phone: $phone');
                                  print('Date: $_dueDate');
                                  print('Color: $_currentColor');
                                  if (_selectedFile != null) {
                                    print('File Name: ${_selectedFile!.name}');
                                    print(
                                        'File Type: ${_selectedFile!.extension}');
                                    print('File Size: ${_selectedFile!.size}');
                                  } else {
                                    print('Tidak ada file yang dipilih.');
                                  }
                                });
                              }
                            }
                          },
                          child: Text(isEditing
                              ? "Update"
                              : "Submit"), // Teks tombol bergantung pada status pengeditan
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Text(
                      "List Contacts",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: contacts.length,
                      itemBuilder: (context, index) {
                        final contact = contacts[index];

                        if (index == selectedContactIndex && isEditing) {
                          //Apakah kontak sedang dalam mode pengeditan
                          editNameController.text = contact.name;
                          editPhoneController.text = contact.phone;
                        }

                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.purple[100],
                            child: Text(
                              contact.name[0].toUpperCase(),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          title: Text(contact.name),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nomor: ${contact.phone}'),
                              Text(
                                  'Date: ${DateFormat('EEEE, dd MMMM yyyy').format(contact.dueDate)}'),
                              Row(
                                children: [
                                  const Text('Color: '),
                                  Container(
                                    width: 20, // Lebar kotak kecil warna
                                    height: 20, // Tinggi kotak kecil warna
                                    decoration: BoxDecoration(
                                      color: contact.color,
                                      // Garis tepi kotak kecil
                                    ),
                                  ),
                                ],
                              ),
                              if (contact.selectedFile != null)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'File Name: ${contact.selectedFile!.name}'),
                                    Image.file(
                                      File(
                                        contact.selectedFile!.path.toString(),
                                      ),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (isEditing &&
                                          index == selectedContactIndex) {
                                        //Selesai mengedit, perbarui nilai nama dan nomor telepon
                                        contacts[selectedContactIndex].name =
                                            editNameController.text;
                                        contacts[selectedContactIndex].phone =
                                            editPhoneController.text;
                                        contacts[selectedContactIndex].dueDate =
                                            _dueDate; // Menyimpan nilai DatePicker
                                        contacts[selectedContactIndex].color =
                                            _currentColor; // Menyimpan nilai ColorPicker
                                        contacts[selectedContactIndex]
                                                .selectedFile =
                                            _selectedFile; // Menyimpan nilai FilePicker
                                        isEditing = false;
                                        selectedContactIndex = -1;
                                      } else {
                                        //Mulai mengedit
                                        selectedContactIndex = index;
                                        isEditing = true;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    isEditing && index == selectedContactIndex
                                        ? Icons.check
                                        : Icons.edit,
                                    size: 24.0,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    setState(() {
                                      contacts.removeAt(index);
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun widget date picker.
  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 5),
                );

                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
              child: const Text('Select'),
            )
          ],
        ),
        Text(DateFormat('EEEE, dd MMMM yyyy').format(_dueDate)),
      ],
    );
  }

  // Fungsi untuk membangun widget color picker.
  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            child: const Text('Pick Color'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Pick Your Color'),
                      content: BlockPicker(
                        pickerColor: _currentColor,
                        onColorChanged: (color) {
                          setState(() {
                            _currentColor = color;
                          });
                        },
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    );
                  });
            },
          ),
        )
      ],
    );
  }

  // Fungsi untuk membangun widget file picker.
  Widget buildFilePicker() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text('Pick Files'),
      const SizedBox(
        height: 10.0,
      ),
      Center(
        child: ElevatedButton(
          child: const Text('Pick and Open File'),
          onPressed: () {
            _pickFile();
          },
        ),
      )
    ]);
  }

  // Fungsi untuk memilih file dan menyimpannya dalam _selectedFile.
  void _pickFile() async {
    try {
      final result = await FilePicker.platform.pickFiles();
      if (result == null) return;

      final file = result.files.first;
      setState(() {
        _selectedFile = file;
      });
    } on PlatformException catch (e) {
      print("Error memilih file: $e");
    }
  }
}

class Contact {
  late String name;
  late String phone;
  bool isEditing;
  DateTime dueDate; // Menyimpan nilai DatePicker
  Color color; // Menyimpan nilai ColorPicker
  PlatformFile? selectedFile; // Menyimpan nilai FilePicker

  Contact({
    required this.name,
    required this.phone,
    this.isEditing = false,
    required this.dueDate,
    required this.color,
    this.selectedFile,
  });
}
