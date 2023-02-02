import 'user_input.dart';

class Bai126 {
  int totalNegativeNum(List list, int n) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
      int num = list[i];
      if (list[i] < 0) {
        sum += num;
      }
    }
    return sum;
  }

  void resolve() {
    // Bài 126: Viết hàm tính tổng các giá trị âm trong mảng 1 chiều các số thực
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(totalNegativeNum(list, n));
  }
}
