import 'user_input.dart';

class Bai146 {
  int findFirstNeg(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] < 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    // Bài 146: Tìm giá trị âm đầu tiên trong mảng 1 chiều các số thực. Nếu mảng không có giá trị âm thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findFirstNeg(list, n));
  }
}
