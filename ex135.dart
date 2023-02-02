import 'user_input.dart';

class Bai135 {
  int findFirstPos(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] > 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    // Bài 135: Viết hàm tìm giá trị dương đầu tiên trong mảng 1 chiều các số thực. Nếu mảng không có giá trị dương thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findFirstPos(list, n));
  }
}
