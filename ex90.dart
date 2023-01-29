import 'dart:io';

class Bai90 {
  void resolve() {
    // Bài 90: Viết chương trình tìm số nguyên dương m lớn nhất sao cho 1 + 2 + … + m < N
    print('Nhap so N:');
    int? n = int.parse(stdin.readLineSync()!);

    int sum = 0;
    int m = 0;
    do {
      m++;
      sum += m;
    } while (sum + m + 1 < n);
    print(m);
  }
}
