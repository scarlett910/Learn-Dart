// Bài 179: Hãy liệt kê các giá trị trong mảng mà thỏa điều kiện lớn hơn giá trị tuyệt đối của giá trị đứng liền sau nó
import 'user_input.dart';

class Bai179 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    for (int i = 0; i < n; i++) {
      int j = list[i + 1];
      if (list[i] > j.abs()) {
        print(list[i]);
      }
    }
  }
}
