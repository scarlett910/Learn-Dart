import 'user_input.dart';
import 'prime_number.dart';

// Bài 144: Tìm số nguyên tố đầu tiên trong mảng 1 chiều các số nguyên. Nếu mảng không có số nguyên tố thì trả về -1
class Bai144 {
  int findFirstPrime(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (PrimeNumber.checkPrime(number: n) == true) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findFirstPrime(list, n));
  }
}
