import 'user_input.dart';

class Bai216 {
  void resolve() {
    // Bài 216: Đếm số lượng số chẵn trong mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int count = 0;
    for (int j = 0; j < n; j++) {
      if (list[j] % 2 == 0 && list[j] != 0) {
        count++;
      }
    }
    print(count);
  }
}
