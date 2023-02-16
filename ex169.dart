// Bài 169 (*): Cho mảng 1 chiều các số nguyên. Hãy viết hàm tìm số chẵn nhỏ nhất lớn hơn mọi giá trị lẻ có trong mảng
import 'user_input.dart';

class Bai169 {
  int findOdd(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 != 0) {
        return index[i];
      }
    }
    return -1;
  }

  int findLargestOdd(List list, int n) {
    int b = findOdd(list, n);
    if (b == -1) {
      return -1;
    }
    for (int i = 0; i < n; i++) {
      if (list[i] % 2 != 0 && b < list[i]) {
        b = list[i];
      }
    }
    return b;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int largestOdd = findLargestOdd(list, n);
    if (largestOdd == -1) {
      print('Mang khong chua gia tri le');
    } else {
      int smallestEven = largestOdd + 1;
      print(
          'Số chẵn nhỏ nhất lớn hơn mọi giá trị lẻ có trong mảng là $smallestEven');
    }
  }
}
