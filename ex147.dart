import 'user_input.dart';

class Bai147 {
  int findLastPos(List index, int n) {
    for (int i = n - 1; i >= 0; i--) {
      if (index[i] > 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 147: Tìm số dương cuối cùng trong mảng số thực. Nếu mảng không có giá trị dương thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findLastPos(list, n));
  }
}
