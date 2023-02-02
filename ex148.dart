import 'user_input.dart';
import 'prime_number.dart';

//Bài 148: Tìm số nguyên tố cuối cùng trong mảng 1 chiều các số nguyên. Nếu mảng không có số nguyên tố thì trả về  -1
class Bai148 {
  int findLastPrime(List index, int n) {
    for (int i = n - 1; i >= 0; i--) {
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

    print(findLastPrime(list, n));
  }
}
