import 'dart:io';
import 'dart:math';

class Bai200 {
  void resolve() {
    // Bài 200: Tính tổng các phần tử trong mảng
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
      total += index[j];
    }
    print(total);
  }
}
