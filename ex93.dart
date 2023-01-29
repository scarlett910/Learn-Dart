import 'dart:io';

class Bai93 {
  void resolve() {
    // Bài 93: Viết chương trình kiểm tra 1 số có phải là số nguyên tố hay không
    print('Nhap mot so:');
    int? n = int.parse(stdin.readLineSync()!);

    int count = 0;
    if (n < 2) {
      print('Khong la so nguyen to');
    } else {
      for (int i = 1; i <= n; i++) {
        if (n % i == 0) {
          count++;
        }
      }
      if (count == 2) {
        print('La so nguyen to');
      } else {
        print('Khong la so nguyen to');
      }
    }
  }
}
