// Bài 188: Hãy liệt kê các vị trí chẵn lớn nhất trong mảng 1 chiều các số nguyên
import 'user_input.dart';

class Bai188 {
  int findLargestEven(List list, int soPhanTu) {
    int max = 0;
    int count = 0;
    int i = 0;
    for (i = 0; i < soPhanTu; i++) {
      if (list[i] % 2 == 0) {
        count++;
        max = i;
        break;
      }
    }
    if (count == 0) {
      return -1;
    }
    for (i += 1; i < soPhanTu; i++) {
      if ((list[i] % 2 == 0) && (list[i] > list[max])) {
        max = i;
      }
    }
    return max;
  }

  void listAllLargestEven(List list, int soPhanTu) {
    int largestEven = list[findLargestEven(list, soPhanTu)];
    for (int i = 0; i < soPhanTu; i++) {
      if (list[i] == largestEven) {
        print(i);
      }
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    listAllLargestEven(list, n);
  }
}
