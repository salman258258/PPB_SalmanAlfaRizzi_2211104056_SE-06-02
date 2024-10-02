void main() {
    var name = 'salman';
    var umur = 20;   
    var namalengkap = 'salman alfarizzi';
    var nilai = 80;
    int i = 1; 
    List<int> fixedList = List.filled(3, 0);
    String firstname = 'salman';
     var lastname = 'alfarizzi';

    //MENGGABUNGKAN MENGGUNAKAN CAMELCASE
     print('hai $firstname $lastname');
  
    //ELSE STATEMENT
    if(umur > 20){
      print('$firstname TUA KARENA UMUR $umur');
    }else if (umur == 10){
      print('$firstname KECIL UMUR $umur');
    }else{
        print('$firstname MUDA KARENA MASIH $umur');
    }
    //SWITCH CASE
    switch(nilai){
      case 'a':
      print('nilai sempurna');
      break;
      case 'b':
      print('nilai bagus');
      break;
      case 'c':
      print('nilai cukup');
      break;
      default:
      print('nilai ku');
    }
    //CONDITION ? TRUE : FALSE

    var now = 8;
    var open = 9;
    var toko = now > open ? 'TOKO SUDAH BUKA' : 'TOKO TUTUP';
    print(toko);

    
    // For loop untuk mencetak angka 1 sampai 5
    for (int i = 1; i <= 5; i++) {
    print(i);
    }

    // While loop untuk mencetak angka 1 sampai 5
      while (i <= 5) {
      print('Angka: $i');
      i++; // Increment untuk menghindari loop tak berujung
      }
      // Mengubah elemen dalam list
      fixedList[0] = 10;
      fixedList[1] = 20;
      fixedList[2] = 30;
      print('Fixed Length List: $fixedList');

      List<int> growableList = [];
    // Menambahkan elemen baru ke dalam list
    growableList.add(10);
    growableList.add(20);
    growableList.add(30);
    print('Growable List setelah menambah elemen: $growableList'); //
    // Menambahkan lebih banyak elemen
    growableList.add(40);
    growableList.add(50);
    print(growableList); // Output: [10, 20, 30, 40, 50]
    // Menghapus elemen dari list
    growableList.remove(20);
    print('Growable List setelah menghapus elemen: $growableList');
}
  
