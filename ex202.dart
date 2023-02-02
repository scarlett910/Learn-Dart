import 'user_input.dart';

class Bai202 {
  void resolve() {
    // Bài 202: Tính tổng các giá trị có chữ số đầu tiên là chữ số lẻ trong mảng 1 chiều các số nguyên
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int total = 0;
    for (int j = 0; j < n; j++) {
      if ((list[j] ~/ 10) % 2 != 0) {
        total += list[j];
      }
    }
    print(total);
  }
}
