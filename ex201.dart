import 'dart:io';
import 'dart:math';

class Bai201 {
  void resolve() {
    // Bài 201: Tính tổng các giá trị dương trong mảng 1 chiều các số thực
    List<int> index = [];
    print('Nhập số phần tử:');
    int? n = int.parse(stdin.readLineSync()!);
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);
    int total = 0;
    for (int j = 0; j < n; j++) {
      if (index[j] % 2 == 0) {
        total += index[j];
      }
    }
    print(total);
  }
}
