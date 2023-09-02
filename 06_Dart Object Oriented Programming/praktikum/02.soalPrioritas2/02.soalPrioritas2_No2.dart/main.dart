import 'course.dart'; // Mengimpor definisi class Course dari file 'course.dart'
import 'student.dart'; // Mengimpor definisi class Student dari file 'student.dart'

void main() {
  // Membuat instances (objek) dari class Course dengan judul dan deskripsi tertentu
  Course course1 = Course('Matematika', 'Pemahaman dasar matematika');
  Course course2 = Course('Fisika', 'Konsep dasar fisika');
  Course course3 =
      Course('Bahasa Inggris', 'Kemampuan berkomunikasi dalam bahasa Inggris');

  // Membuat instance (objek) dari class Student dengan nama 'Tri Bayu' dan kelas 'XII IPA'
  Student student1 = Student('Tri Bayu', 'XII IPA');
  // Menambahkan course1 dan course2 ke daftar courses milik student1
  student1.tambahCourse(course1);
  student1.tambahCourse(course2);
  // Menampilkan daftar courses yang dimiliki oleh student1
  student1.lihatCourses();

  // Membuat instance (objek) dari class Student dengan nama 'Jane Smith' dan kelas 'XII IPS'
  Student student2 = Student('Greesella', 'XII IPS');
  // Menambahkan course3 ke daftar courses milik student2
  student2.tambahCourse(course3);
  // Menampilkan daftar courses yang dimiliki oleh student2
  student2.lihatCourses();

  // Menghapus course2 dari daftar courses milik student1
  student1.hapusCourse(course2);
  // Menampilkan daftar courses yang dimiliki oleh student1 setelah penghapusan
  student1.lihatCourses();
}
