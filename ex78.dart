import 'user_input.dart';

class Bai78 {
  void resolve() {
    // Bài 78: Liệt kê tất cả các ước số của số nguyên dương n
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap n:');

    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        print(i);
      }
    }
  }
}
