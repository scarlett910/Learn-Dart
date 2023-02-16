// Bài 170: Cho mảng 1 chiều các số nguyên. Hãy viết hàm tìm số nguyên tố nhỏ nhất lớn hơn mọi giá trị có trong mảng
import 'user_input.dart';
import 'prime_number.dart';

class Bai170 {
  int findLargestNum(List index, int n) {
    int b = index[0];
    for (int i = 0; i < n; i++) {
      if (index[i] > b) {
        b = index[i];
      }
    }
    return b;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int a = findLargestNum(list, n);
    while (PrimeNumber.checkPrime(number: a) != true) {
      a++;
    }
    print('Số nguyên tố nhỏ nhất lớn hơn mọi giá trị có trong mảng là $a');
  }
}
