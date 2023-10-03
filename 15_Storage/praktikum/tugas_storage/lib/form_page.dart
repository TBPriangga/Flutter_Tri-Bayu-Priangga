// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas_storage/login_screen.dart';

// ignore: camel_case_types
class formPage extends StatefulWidget {
  const formPage({Key? key}) : super(key: key);

  @override
  _formPageState createState() => _formPageState();
}

// ignore: camel_case_types
class _formPageState extends State<formPage> {
  List<Contact> contacts = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  int selectedContactIndex = -1;
  bool isEditing = false;

  TextEditingController editNameController = TextEditingController();
  TextEditingController editPhoneController = TextEditingController();

  late SharedPreferences logindata;
  String username = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
    });
  }

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
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(username),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: ElevatedButton(
                        onPressed: () async {
                          // Hapus data SharedPreferences dan kembali ke halaman login
                          logindata.setBool('login', true);
                          logindata.remove('username');
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text('Logout'),
                      ),
                    ),
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
                                  return 'Nama harus diawali dengan kapital';
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
                                    //Memperbarui kontak yang sedang diedit
                                    contacts[selectedContactIndex].name = name;
                                    contacts[selectedContactIndex].phone =
                                        phone;
                                    isEditing = false;
                                    selectedContactIndex = -1;
                                  } else {
                                    //Menambahkan kontak baru
                                    contacts
                                        .add(Contact(name: name, phone: phone));
                                  }
                                  nameController.clear();
                                  phoneController.clear();
                                });
                              }
                            }
                          },
                          child: Text(isEditing
                              ? "Update"
                              : "Submit"), //Teks tombol bergantung pada status pengeditan
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
                          subtitle: Text(contact.phone),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Contact {
  late String name;
  late String phone;
  bool isEditing;

  Contact({
    required this.name,
    required this.phone,
    this.isEditing = false,
  });
}
