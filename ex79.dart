import 'dart:io';

class Bai79 {
  void resolve() {
    //Bài 79: Hãy đếm số lượng chữ số của số nguyên dương n

    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);

    int dem = 0;
    int t = n;

    while (t != 0) {
      dem++;
      t = t ~/ 10;
    }
    print(dem);
  }
}
