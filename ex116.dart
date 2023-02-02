import 'user_input.dart';

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
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap n:');
    print(tinhTong(n));
  }
}
