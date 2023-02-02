import 'user_input.dart';

class Bai95 {
  void resolve() {
    // Bài 95: Viết chương trình nhập 3 số thực. Hãy thay tất cả các số âm bằng trị tuyệt đối của nó
    UserInput inputOpt = UserInput();
    int a = inputOpt.enterInput('Nhap so a:');
    int b = inputOpt.enterInput('Nhap so b:');
    int c = inputOpt.enterInput('Nhap so c:');

    if (a < 0) {
      a *= -1;
    }
    if (b < 0) {
      b *= -1;
    }
    if (c < 0) {
      c *= -1;
    }
    print(a);
    print(b);
    print(c);
  }
}
