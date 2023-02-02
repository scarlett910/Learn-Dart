import 'user_input.dart';

class Bai178 {
  void resolve() {
    // Bài 178: Hãy liệt kê các số chẵn trong mảng 1 chiều các số nguyên thuộc đoạn [x, y] cho trước (x, y là các số nguyên)
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int x = inputOpt.enterInput('Nhap x:');
    int y = inputOpt.enterInput('Nhap y:');

    for (int j = 0; j < n; j++) {
      if (list[j] >= x && list[j] <= y && list[j] % 2 == 0) {
        print(list[j]);
      }
    }
  }
}
