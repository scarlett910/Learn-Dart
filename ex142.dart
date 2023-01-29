import 'dart:io';
import 'dart:math';

class Bai142 {
  int findSmallest(List index, int n) {
    int s = index[0];
    for (int i = 0; i < n; i++) {
      if (index[i] < s) {
        s = index[i];
      }
    }
    return s;
  }

  void resolve() {
    // Bài 142: Tìm giá trị nhỏ nhất trong mảng 1 chiều số thực
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findSmallest(index, n));
  }
}
