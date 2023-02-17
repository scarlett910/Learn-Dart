// Bài 211: Tính trung bình cộng các số nguyên tố trong mảng 1 chiều các số nguyên

import 'user_input.dart';
import 'prime_number.dart';

class Bai211 {
  double averagePrime(List list, int n) {
    int count = 0;
    num total = 0;
    for (int i = 0; i < n; i++) {
      if (PrimeNumber.checkPrime(number: list[i]) == true) {
        total += list[i];
        count++;
        print(list[i]);
      }
    }
    if (count == 0) {
      print('Mang khong co gia tri do');
      return 0;
    }
    return total / count;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    double avaragePrimeNum = averagePrime(list, n);
    print(avaragePrimeNum);
  }
}
