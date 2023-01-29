import 'dart:io';
import 'dart:math';

class Bai203 {
  void resolve() {
    // Bài 203: Tinh tổng các chữ số có chữ số hàng chục là 5 trong mảng 1 chiều các số nguyên
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
      double phanTu = index[j] / 10;
      if (phanTu.floor() == 5) {
        total += index[j];
      }
    }
    print(total);
  }
}
