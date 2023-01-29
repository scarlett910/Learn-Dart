import 'dart:io';
import 'dart:math';

class Bai134 {
  int findLargest(List index, int n) {
    int b = index[0];
    for (int i = 0; i < n; i++) {
      if (index[i] > b) {
        b = index[i];
      }
    }
    return b;
  }

  void resolve() {
    // Bài 134: Viết hàm tìm giá trị lớn nhất trong mảng 1 chiều các số thực
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findLargest(index, n));
  }
}
