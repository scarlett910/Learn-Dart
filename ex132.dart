import 'dart:io';
import 'dart:math';

class Bai132 {
  void listEvenNumber(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 == 0) {
        print(index[i]);
      }
    }
  }

  void resolve() {
    // Bài 132: Viết hàm liệt kê các giá trị chẵn trong mảng 1 chiều các số nguyên
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    listEvenNumber(index, n);
  }
}
