import 'user_input.dart';
import 'dart:math';

class Bai86 {
  void resolve() {
    // Bài 86: Tính S(n) = 1^3 + 2^3 + … + N^3
    UserInput inputOpt = UserInput();
    int N = inputOpt.enterInput('Nhap N:');

    int sum = 0;
    for (int i = 1; i <= N; i++) {
      sum += (pow(i, 3)).toInt();
    }
    print(sum);
  }
}
