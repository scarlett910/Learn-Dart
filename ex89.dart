import 'dart:io';

class Bai89 {
  void resolve() {
    // Bài 89: Viết chương trình tính tổng các giá trị lẻ nguyên dương nhỏ hơn N
    print('Nhap so n:');
    int? n = int.parse(stdin.readLineSync()!);

    int sum = 0;
    for (int i = 0; i < n; i++) {
      if (i % 2 != 0) {
        sum += i;
      }
    }
    print(sum);
  }
}
