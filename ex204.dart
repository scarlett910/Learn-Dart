// Bài 204: Tính tổng các giá trị lớn hơn giá trị đứng liền trước nó trong mảng 1 chiều các số thực
import 'user_input.dart';

class Bai204 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    int total = 0;
    for (int i = 1; i < n; i++) {
      if (list[i] > list[i - 1]) {
        total += list[i];
      }
    }
    print(total);
  }
}
