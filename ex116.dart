import 'dart:io';

class Bai116 {
  int tinhTong(int n) {
    int i = 1;
    int s = 0;
    while (i <= n) {
      s += i;
      i++;
    }
    return s;
  }

  void resolve() {
    // Bài 116: Viết chương trình nhập n và tính tổng S = 1 + 2 + 3 + … + n
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    print(tinhTong(n));
  }
}
