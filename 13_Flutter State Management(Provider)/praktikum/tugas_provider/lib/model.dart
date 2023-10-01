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
