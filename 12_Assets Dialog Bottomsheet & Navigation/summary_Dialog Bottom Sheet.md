#Dialog Bottom Sheet
1. AlertDialog
- Merupakan tampilan android dari material design
 - Fungsinya untuk menginformasikan kepada pengguna tentang situasi tertentu
 - Bisa digunakan untuk mendapatkan input dari user
 - Membutuhkan helper method showDialog
 Contoh penggunaan Code
  child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(task.taskName),
          IconButton(
            onPressed: () {
                //Dimulai Dari Sini Code Alert Dialog
              showDialog( // Memanggil fungsi showDialog didalam fungsi onPressed pada IconButton
              //showDialog membutuhkan context dan builder
                context: context,
                builder: (context) => AlertDialog( // Pada builder akan me=return AlertDialognya
                // AlertDialog menyediakan properti seperti content dan actions
                  content: const Text('Are you sure?'), //pada content dapat dimasukkan widget text, gambar dan animasi gambar
                  actions: [ // pada actions dapat ditambahkan button untuk menerima respon dari user
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('NO'),
                    ),
                    TextButton(
                      onPressed: onPressed, //Jangan lupa untuk membuat properti onPressed, contohnya ada dibawah
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.delete_forever_rounded),
          ),
        ],
      ),

Berikut contoh pembuatan properti onPressed

class TaskItemCard extends StatelessWidget {
  final TaskModel task;
  final Function() onPressed; //ini propertinya

  const TaskItemCard({
    Key? key,
    required this.task,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

Lalu menambahkan fungsi onPressed seperti berikut

  @override
  Widget build(BuildContext context) {
    final taskItems = manager.taskModels;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: taskItems.length,
        itemBuilder: (context, index) {
          final item = taskItems[index];
          return TaskItemCard(
            key: Key(item.id),
            task: item,
            onPressed: () { //Dimulai dari sini
              manager.deleteTask(index); //untuk menghapus
              Navigator.pop(context); // untuk keluar dari AlertDialog
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${item.taskName} Deleted'))); // Memunculkan Notif bahwa card telah dihapus
            },
          );
        },

2. Bottom Sheet       
- Sama seperti dialog, namun ia muncul dari bawah layar aplikasi
- Lalu Menggunakan fungsi bawaan dari flutter yaitu showModalBottomSheet
- ia membutuhkan 2 properti, yaitu context dan builder
contoh penggunaan code
class _TaskScreenPageState extends State<TaskScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Management"),
        centerTitle: true,
        actions: [ //Dimulai dari actions appBar
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => const ProfileSheet(),
              );
            },
            icon: const Icon(Icons.account_circle),
          )
        ],
      ),

      Lalu membuat file baru yaitu profile

      lalu panggillah pada bagian 
      onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => const ProfileSheet(), //bagian sini untuk memunculkan file profile
              );
            },
            icon: const Icon(Icons.account_circle),
          )
        ],
      ),