import 'user_input.dart';
// Bài 154: Hãy tìm vị trí giá trị âm nhỏ nhất trong mảng các số thực. Nếu mảng không có số âm thì trả về -1

class Bai154 {
  int findNeg(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] < 0) {
        return index[i];
      }
    }
    return -1;
  }

  int findSmallestNeg(List index, int n) {
    int s = 0;
    if (findNeg(index, n) == -1) {
      return -1;
    } else {
      for (int i = 0; i < n; i++) {
        if (index[i] < index[s]) {
          s = i;
        }
      }
      return s;
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findSmallestNeg(list, n));
  }
}
