import 'user_input.dart';

class Bai150 {
  int findNeg(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] < 0) {
        return index[i];
      }
    }
    return -1;
  }

  int findLargestNeg(List index, int n) {
    int b = findNeg(index, n);
    if (b == -1) {
      return -1;
    }
    for (int i = 0; i < n; i++) {
      if (index[i] < 0 && index[i] > b) {
        b = index[i];
      }
    }
    return b;
  }

  void resolve() {
    //Bài 150: Hãy tìm giá trị âm lớn nhất trong mảng 1 chiều các số thực. Nếu mảng không có giá trị âm thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findLargestNeg(list, n));
  }
}
