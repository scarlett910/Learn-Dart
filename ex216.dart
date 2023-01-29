import 'dart:io';
import 'dart:math';

class Bai216 {
  void resolve() {
    // Bài 216: Đếm số lượng số chẵn trong mảng
    List<int> index = [];
    print('Nhập số phần tử:');
    int? n = int.parse(stdin.readLineSync()!);
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);

    int count = 0;
    for (int j = 0; j < n; j++) {
      if (index[j] % 2 == 0 && index[j] != 0) {
        count++;
      }
    }
    print(count);
  }
}
