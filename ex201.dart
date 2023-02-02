import 'user_input.dart';

class Bai201 {
  void resolve() {
    // Bài 201: Tính tổng các giá trị dương trong mảng 1 chiều các số thực
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    int total = 0;
    for (int j = 0; j < n; j++) {
      if (list[j] % 2 == 0) {
        total += list[j];
      }
    }
    print(total);
  }
}
