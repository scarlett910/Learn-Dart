import 'dart:io';

class Bai117 {
  int tinhTong(int n, int x) {
    int sum = 0;
    int so = 1;
    for (int i = 0; i < n; ++i) {
      so = so * x;
      sum += so;
    }
    return sum;
  }

  void resolve() {
    // Bài 117: Viết chương trình nhập n và tính tổng S(n) = x + x^2 + x^3 + … + x^n
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);

    print('Nhap x:');
    int? x = int.parse(stdin.readLineSync()!);

    print(tinhTong(n, x));
  }
}
