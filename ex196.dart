// Bài 196: Liệt kê các số âm trong mảng 1 chiều các số nguyên
import 'user_input.dart';

class Bai196 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    for (int i = 1; i < n - 1; i++) {
      if (list[i] < 0) {
        print(list[i]);
      }
    }
  }
}
