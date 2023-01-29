import 'dart:io';
import 'dart:math';

class Bai202 {
  void resolve() {
    // Bài 202: Tính tổng các giá trị có chữ số đầu tiên là chữ số lẻ trong mảng 1 chiều các số nguyên
    List<int> index = [];
    print('Nhập số phần tử:');
    int? n = int.parse(stdin.readLineSync()!);
    final randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);

    int total = 0;
    for (int j = 0; j < n; j++) {
      double phanTu = index[j] / 10;
      if ((phanTu.floor() % 2 != 0) && (index[j] > 10)) {
        total += index[j];
      }
    }
    print(total);
  }
}
