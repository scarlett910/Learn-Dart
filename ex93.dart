import 'user_input.dart';
import 'prime_number.dart';

class Bai93 {
  void resolve() {
    // Bài 93: Viết chương trình kiểm tra 1 số có phải là số nguyên tố hay không
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap n:');

    if (PrimeNumber.checkPrime(number: n) == true) {
      print('La so nguyen to');
    } else {
      print('Khong phai la so nguyen to');
    }
  }
}
