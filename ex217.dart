import 'user_input.dart';

class Bai217 {
  void resolve() {
    // Bài 217: Đếm số dương chia hết cho 7 trong mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int count = 0;
    for (int j = 0; j < n; j++) {
      if (list[j] % 7 == 0 && list[j] != 0) {
        count++;
      }
    }
    print(count);
  }
}
