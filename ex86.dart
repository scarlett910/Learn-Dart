import 'dart:io';
import 'dart:math';

class Bai86 {
  void resolve() {
    // Bài 86: Tính S(n) = 1^3 + 2^3 + … + N^3
    print('Nhập số n:');
    int? n = int.parse(stdin.readLineSync()!);

    int sum = 0;
    for (int i = 1; i <= n; i++) {
      sum += (pow(i, 3)).toInt();
    }
    print(sum);
  }
}
