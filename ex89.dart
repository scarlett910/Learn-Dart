import 'user_input.dart';

class Bai89 {
  void resolve() {
    // Bài 89: Viết chương trình tính tổng các giá trị lẻ nguyên dương nhỏ hơn N
    UserInput inputOpt = UserInput();
    int N = inputOpt.enterInput('Nhap N:');

    int sum = 0;
    for (int i = 0; i < N; i++) {
      if (i % 2 != 0) {
        sum += i;
      }
    }
    print(sum);
  }
}
