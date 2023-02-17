// Bài 205: Tính tổng các giá trị lớn hơn trị tuyệt đối của giá trị đứng liền sau nó trong mảng 1 chiều các số thực
import 'user_input.dart';

class Bai205 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    int total = 0;
    for (int i = 0; i < n; i++) {
      int absoluteNextNum = list[i + 1];
      if (list[i] > absoluteNextNum.abs()) {
        total += list[i];
      }
    }
    print(total);
  }
}
