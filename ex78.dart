import 'dart:io';

class Bai78 {
  void resolve() {
    // Bài 78: Liệt kê tất cả các ước số của số nguyên dương n
    print('Nhap n: ');
    int? n = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        print(i);
      }
    }
  }
}
