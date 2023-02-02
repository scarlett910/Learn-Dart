import 'user_input.dart';

class Bai90 {
  void resolve() {
    // Bài 90: Viết chương trình tìm số nguyên dương m lớn nhất sao cho 1 + 2 + … + m < N
    UserInput inputOpt = UserInput();
    int N = inputOpt.enterInput('Nhap N:');

    int sum = 0;
    int m = 0;
    do {
      m++;
      sum += m;
    } while (sum + m + 1 < N);
    print(m);
  }
}
