import 'user_input.dart';
import 'prime_number.dart';

class Bai151 {
  int findLargestPrime(List index, int n) {
    int b = index[0];
    for (int i = 0; i < n; i++) {
      if (PrimeNumber.checkPrime(number: n) == true && index[i] > b) {
        return b = index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 151: Hãy tìm số nguyên tố lớn nhất trong mảng 1 chiều các số nguyên. Nếu mảng không có số nguyên tố thì trả về -1
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findLargestPrime(list, n));
  }
}
