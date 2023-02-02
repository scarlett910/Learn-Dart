import 'user_input.dart';

class Bai153 {
  int findEven(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 == 0) {
        return index[i];
      }
    }
    return -1;
  }

  int findSmallestEven(List index, int n) {
    int s = index[0];
    if (findEven(index, n) == -1) {
      return -1;
    } else {
      for (int i = 0; i < n; i++) {
        if (index[i] % 2 == 0 && index[i] < s) {
          s = index[i];
        }
      }
      return s;
    }
  }

  void resolve() {
    //Bài 153: Hãy tìm giá trị chẵn nhỏ nhất trong mảng 1 chiều các số nguyên. Nếu mảng không có số chẵn thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findSmallestEven(list, n));
  }
}
