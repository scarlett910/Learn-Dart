import 'dart:io';
import 'dart:math';

class Bai178 {
  void resolve() {
    // Bài 178: Hãy liệt kê các số chẵn trong mảng 1 chiều các số nguyên thuộc đoạn [x, y] cho trước (x, y là các số nguyên)
    List<int> index = [];
    print('Nhập số phần tử:');
    int? n = int.parse(stdin.readLineSync()!);
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);

    print('Nhap x: ');
    int? x = int.parse(stdin.readLineSync()!);

    print('Nhap y: ');
    int? y = int.parse(stdin.readLineSync()!);

    for (int j = 0; j < n; j++) {
      if (index[j] >= x && index[j] <= y && index[j] % 2 == 0) {
        print(index[j]);
      }
    }
  }
}
