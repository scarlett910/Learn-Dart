import 'user_input.dart';

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
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap n:');
    int x = inputOpt.enterInput('Nhap x:');

    print(tinhTong(n, x));
  }
}
