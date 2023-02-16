// Bài 187: Hãy liệt kê các vị trí mà giá trị tại các vị trí đó bằng giá trị dương nhỏ nhất trong mảng 1 chiều các số thực
import 'user_input.dart';

class Bai187 {
  int findSmallestPos(List list, int soPhanTu) {
    int min = 0;
    int count = 0;
    int i = 0;
    for (i = 0; i < soPhanTu; i++) {
      if (list[i] > 0) {
        count++;
        min = i;
        break;
      }
    }
    if (count == 0) {
      return -1;
    }
    for (i += 1; i < soPhanTu; i++) {
      if ((list[i] > 0) && (list[i] < list[min])) {
        min = i;
      }
    }
    return min;
  }

  void listAllSmallestPos(List list, int soPhanTu) {
    int smallestPos = list[findSmallestPos(list, soPhanTu)];
    for (int i = 0; i < soPhanTu; i++) {
      if (list[i] == smallestPos) {
        print(i);
      }
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    listAllSmallestPos(list, n);
  }
}
