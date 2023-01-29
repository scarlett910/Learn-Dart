import 'dart:io';

class Bai96 {
  void resolve() {
    // Bài 96: Viết chương trình nhập giá trị x sau tính giá trị của hàm số
//f(x) = 2x^2 + 5x + 9 khi x >= 5, f(x) = -2x^2 + 4x – 9 khi x < 5
    print('Nhap x:');
    int? x = int.parse(stdin.readLineSync()!);
    var y = 0;
    if (x >= 5) {
      y = 2 * x * x + 5 * x + 9;
    } else {
      y = -2 * x * x + 4 * x - 9;
    }
    print(y);
  }
}
