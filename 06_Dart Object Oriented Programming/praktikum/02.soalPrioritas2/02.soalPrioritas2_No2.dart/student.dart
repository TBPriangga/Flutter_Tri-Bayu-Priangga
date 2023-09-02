import 'course.dart'; // Mengimpor file 'course.dart' yang berisi definisi class Course

class Student {
  String nama; // Atribut untuk menyimpan nama siswa
  String kelas; // Atribut untuk menyimpan kelas siswa
  List<Course>
      courses; // List untuk menyimpan daftar courses yang diambil oleh siswa

  Student(this.nama, this.kelas)
      : courses =
            []; // Constructor untuk menginisialisasi nama dan kelas siswa, serta daftar courses awal kosong

  void tambahCourse(Course course) {
    courses.add(course); // Menambahkan course ke dalam daftar courses siswa
    print('Course ${course.judul} ditambahkan.');
  }

  void hapusCourse(Course course) {
    courses.remove(course); // Menghapus course dari daftar courses siswa
    print('Course ${course.judul} dihapus.');
  }

  void lihatCourses() {
    if (courses.isEmpty) {
      // Jika daftar courses (courses) kosong, tampilkan pesan berikut
      print('Belum ada course yang ditambahkan.');
    } else {
      // Jika daftar courses (courses) tidak kosong, tampilkan judul dan deskripsi setiap course
      print('Daftar Courses:');
      for (Course course in courses) {
        print('${course.judul} - ${course.deskripsi}');
      }
    }
  }
}
