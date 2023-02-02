import 'user_input.dart';
import 'dart:math';

class Bai120 {
  void resolve() {
    // Bài 120: Liệt kê tất cả các số chính phương nhỏ hơn n
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap n:');

    for (int i = 2; i < n; i++) {
      if (sqrt(i) == (sqrt(i)).toInt()) {
        print(i);
      }
    }
  }
}
