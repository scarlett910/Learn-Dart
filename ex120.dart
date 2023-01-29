import 'dart:io';
import 'dart:math';

class Bai120 {
  void resolve() {
    // Bài 120: Liệt kê tất cả các số chính phương nhỏ hơn n
    print('Nhap n: ');
    int? n = int.parse(stdin.readLineSync()!);

    for (int i = 2; i < n; i++) {
      if (sqrt(i) == (sqrt(i)).toInt()) {
        print(i);
      }
    }
  }
}
