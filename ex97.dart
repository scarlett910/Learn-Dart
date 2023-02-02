import 'user_input.dart';

class Bai97 {
  void resolve() {
    // Bài 97: Viết chương trình nhập 3 cạnh của 1 tam giác, cho biết đó là tam giác gì
    UserInput inputOpt = UserInput();
    int a = inputOpt.enterInput('Nhap do dai canh 1:');
    int b = inputOpt.enterInput('Nhap do dai canh 2:');
    int c = inputOpt.enterInput('Nhap do dai canh 3:');
    if (a + b <= c || a + c <= b || b + c <= a) {
      print('Tam giac ko ton tai');
    } else {
      if (a == b && b == c) {
        print('tam giac deu');
      } else if (a == b || a == c || b == c) {
        print('tam giac can');
      } else if (a * a + b * b == c * c ||
          a * a + c * c == b * b ||
          b * b + c * c == a * a) {
        print('tam giac vuong');
      } else {
        print('tam giac thuong');
      }
    }
  }
}
