import 'user_input.dart';

class Bai136 {
  int findLastEven(List index, int n) {
    for (int i = n - 1; i >= 0; i--) {
      if (index[i] % 2 == 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 136: Tìm số chẵn cuối cùng trong mảng 1 chiều các số nguyên. Nếu mảng không có giá trị chẵn thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findLastEven(list, n));
  }
}
