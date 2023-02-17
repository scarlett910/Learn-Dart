// Bài 207: Tính tổng các phần tử “cực trị” trong mảng. Một phần tử được gọi là cực trị khi nó lớn hơn hoặc nhỏ hơn các phần tử xung quanh nó'
import 'user_input.dart';

class Bai207 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    int total = 0;
    for (int i = 0; i < n; i++) {
      if (i == 0 && (list[i] > list[i + 1] || (list[i] < list[i + 1]))) {
        total += list[i];
      } else if (i != 0 &&
          i < n - 1 &&
          ((list[i] > list[i + 1] && list[i] > list[i - 1]) ||
              (list[i] < list[i + 1] && list[i] < list[i - 1]))) {
        total += list[i];
      } else if (i == n - 1 &&
          (list[i] > list[i - 1] || list[i] < list[i - 1])) {
        total += list[i];
      }
    }
    print(total);
  }
}
