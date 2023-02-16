// Bài 184: Hãy liệt kê các vị trí mà giá trị tại đó là số nguyên tố trong mảng 1 chiều các số nguyên
import 'user_input.dart';
import 'prime_number.dart';

class Bai184 {
  void listAllPrime(List list, int n) {
    int count = 0;
    for (int i = 0; i < n; i++) {
      if (PrimeNumber.checkPrime(number: list[i]) == true) {
        count = 1;
        print(list[i]);
      }
    }
    if (count == 0) {
      print('Mang khong co gia tri do');
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    listAllPrime(list, n);
  }
}
