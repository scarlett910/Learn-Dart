// Bài 206: Tính tổng các giá trị lớn hơn các giá trị xung quanh trong mảng 1 chiều các số thực
import 'user_input.dart';

class Bai206 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    int total = 0;
    for (int i = 0; i < n; i++) {
      if (i == 0 && (list[i] > list[i + 1])) {
        total += list[i];
      } else if (i != 0 &&
          i < n - 1 &&
          list[i] > list[i + 1] &&
          list[i] > list[i - 1]) {
        total += list[i];
      } else if (i == n - 1 && list[i] > list[i - 1]) {
        total += list[i];
      }
    }
    print(total);
  }
}
