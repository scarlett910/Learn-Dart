import 'user_input.dart';

class Bai143 {
  int findFirstEven(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 == 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 143: Viết hàm tìm số chẵn đầu tiên trong mảng các số nguyên. Nếu mảng không có giá trị chẵn thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findFirstEven(list, n));
  }
}
