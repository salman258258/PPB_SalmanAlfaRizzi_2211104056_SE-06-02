import 'dart:io';

bool cekPrima(int angka) {
  if (angka <= 1) {
    return false; 
  }

  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false; 
    }
  }
  return true;
}

void main() {
  print("Masukkan sebuah bilangan bulat:");
  int? angka = int.parse(stdin.readLineSync()!); 
  if (cekPrima(angka)) {
    print("$angka adalah bilangan prima");
  } else {
    print("$angka bukan bilangan prima");
  }
}
