import 'user_input.dart';

class Bai203 {
  void resolve() {
    // Bài 203: Tinh tổng các chữ số có chữ số hàng chục là 5 trong mảng 1 chiều các số nguyên
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int total = 0;
    for (int j = 0; j < n; j++) {
      if ((list[j] ~/ 10) == 5) {
        total += list[j];
      }
    }
    print(total);
  }
}
