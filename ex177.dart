import 'user_input.dart';

class Bai177 {
  void resolve() {
    // Bài 177: Hãy liệt kê các số trong mảng 1 chiều các số thực thuộc đoạn [x, y] cho trước
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int x = inputOpt.enterInput('Nhap x:');
    int y = inputOpt.enterInput('Nhap y:');

    for (int j = 0; j < n; j++) {
      if (list[j] >= x && list[j] <= y) {
        print(list[j]);
      }
    }
  }
}
