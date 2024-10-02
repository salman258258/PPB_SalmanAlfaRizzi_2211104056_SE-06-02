import 'dart:io';

void cetakPiramida(int tinggi) {
  for (int i = 1; i <= tinggi; i++) {
    // Mencetak spasi
    for (int j = 1; j <= tinggi - i; j++) {
      stdout.write(" ");
    }
    // Mencetak bintang
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*");
    }
    // Pindah ke baris berikutnya
    print("");
  }
}

void main() {
  print("Masukkan panjang piramida:");
  int? tinggi = int.parse(stdin.readLineSync()!); // Input panjang piramida dari user

  cetakPiramida(tinggi); // Memanggil fungsi cetakPiramida
}
