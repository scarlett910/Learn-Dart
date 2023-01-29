import 'dart:io';

class Bai92 {
  void resolve() {
    // Bài 92: Tìm ước số chung lớn nhất của 2 số nguyên dương
    print('Nhap so nguyen duong 1:');
    int somot = int.parse(stdin.readLineSync()!);

    print('Nhap so nguyen duong 2:');
    int sohai = int.parse(stdin.readLineSync()!);

    while (somot != sohai) {
      if (somot > sohai) {
        somot -= sohai;
      } else {
        sohai -= somot;
      }
    }
    print(somot);
  }
}
