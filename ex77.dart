import 'user_input.dart';

class Bai77 {
  void resolve() {
    //Bài 77: Viết chương trình tính tổng của dãy số sau:
    // S(n) = 1 + 2 + 3 + … + n

    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap n:');
    int i = 1;
    int s = 0;
    while (i <= n) {
      s += i;
      i++;
    }
    print(s);
  }
}
