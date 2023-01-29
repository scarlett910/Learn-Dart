import 'dart:io';
import 'dart:math';

class Bai133 {
  void listNegative(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] < 0) {
        print(i);
      }
    }
  }

  void resolve() {
    // Bài 133: Viết hàm liệt kê các vị trí mà giá trị tại đó là giá trị âm trong mảng 1 chiều các số thực
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    listNegative(index, n);
  }
}
