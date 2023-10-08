class Contact {
  final int id;
  final String name;
  final String phone;

  Contact({required this.id, required this.name, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      id: json['id'] ??
          0, // Jika 'id' tidak ada, isi dengan nilai default (misalnya 0)
      name:
          json['name'] ?? '', // Jika 'name' tidak ada, isi dengan string kosong
      phone: json['phone'] ??
          '', // Jika 'email' tidak ada, isi dengan string kosong
    );
  }
}
