//Soal Prioritas 1
//Nomor 1

String cekNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40) {
    return "Nilai B";
  } else if (nilai > 0) {
    return "Nilai C";
  } else {
    return "Nilai kosong";
  }
}

void main() {
  print("Soal No 1.");
  /*
  Terdapat sebuah nilai:
  jika nilai > 70 akan mereturn “Nilai A”
  jika nilai > 40 akan mereturn “Nilai B”
  jika nilai > 0 akan mereturn “Nilai C”
  selain itu return teks kosong
  */

  int nilaiMahasiswaA = 100;
  int nilaiMahasiswaB = 70;
  int nilaiMahasiswaC = 39;
  int nilaiMahasiswaD = -1;

  String hasilMahasiswaA = cekNilai(nilaiMahasiswaA);
  String hasilMahasiswaB = cekNilai(nilaiMahasiswaB);
  String hasilMahasiswaC = cekNilai(nilaiMahasiswaC);
  String hasilMahasiswaD = cekNilai(nilaiMahasiswaD);

  print(
      "Mahasiswa A memperoleh nilai $nilaiMahasiswaA dengan index $hasilMahasiswaA");
  print(
      "Mahasiswa B memperoleh nilai $nilaiMahasiswaB dengan index $hasilMahasiswaB");
  print(
      "Mahasiswa C memperoleh nilai $nilaiMahasiswaC dengan index $hasilMahasiswaC");
  print(
      "Mahasiswa D memperoleh nilai $nilaiMahasiswaD dengan index $hasilMahasiswaD");

  print("--------------------------------------------------------");
}
