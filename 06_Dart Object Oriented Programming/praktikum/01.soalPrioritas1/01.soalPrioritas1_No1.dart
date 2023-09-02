class Hewan {
  double berat;

  Hewan(this.berat);
}

void main() {
  // Membuat instance 'kucing' dari class Hewan dengan berat 4.5 kg
  Hewan kucing = Hewan(4.5);
  // Membuat instance 'anjing' dari class Hewan dengan berat 10.2 kg
  Hewan anjing = Hewan(10.2);

  // Menampilkan berat kucing
  print('Berat kucing: ${kucing.berat} kg');
  // Menampilkan berat anjing
  print('Berat anjing: ${anjing.berat} kg');
}
