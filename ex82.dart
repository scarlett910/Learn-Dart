import 'user_input.dart';

class Bai82 {
  void resolve() {
    // Bài 82: Viết chương trình tìm số lớn nhất trong 3 số thực a, b, c
    UserInput inputOpt = UserInput();
    int a = inputOpt.enterInput('Nhap so a:');
    int b = inputOpt.enterInput('Nhap so b:');
    int c = inputOpt.enterInput('Nhap so c:');

    int max = a;
    if (max < b) {
      max = b;
    }
    if (max < c) {
      max = c;
    }
    print(max);
  }
}
