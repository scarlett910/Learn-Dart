import 'user_input.dart';

class Bai137 {
  int findSmallest(List index, int n) {
    int s = 0;
    for (int i = 0; i < n; i++) {
      if (index[i] < index[s]) {
        s = i;
      }
    }
    return s;
  }

  void resolve() {
    // Bài 137: Tìm 1 vị trí mà giá trị tại vị trí đó là giá trị nhỏ nhất trong mảng 1 chiều các số thực
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findSmallest(list, n));
  }
}
