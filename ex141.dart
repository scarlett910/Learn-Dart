import 'user_input.dart';

class Bai141 {
  int findSmallestPos(List index, int n) {
    int min = 0;
    int count = 0;
    int i = 0;
    for (i = 0; i < n; i++) {
      if (index[i] > 0) {
        count++;
        min = i;
        break;
      }
    }
    if (count == 0) {
      return -1;
    }
    for (i += 1; i < n; i++) {
      if ((index[i] > 0) && (index[i] < index[min])) {
        min = i;
      }
    }
    return min;
  }

  void resolve() {
    //Bài 141: Hãy tìm vị trí giá trị dương nhỏ nhất trong mảng 1 chiều các số thực. Nếu mảng không có giá trị dương thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findSmallestPos(list, n));
  }
}
