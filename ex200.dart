import 'user_input.dart';

class Bai200 {
  void resolve() {
    // Bài 200: Tính tổng các phần tử trong mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    int total = 0;
    for (int j = 0; j < n; j++) {
      total += list[j];
    }
    print(total);
  }
}
