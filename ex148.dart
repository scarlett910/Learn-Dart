import 'dart:io';
import 'dart:math';

class Bai148 {
  bool checkPrime(int n) {
    int count = 0;
    if (n < 2) {
      return false;
    } else {
      for (int i = 1; i <= n; i++) {
        if (n % i == 0) {
          count++;
        }
      }
      if (count == 2) {
        return true;
      } else {
        return false;
      }
    }
  }

  int findLastPrime(List index, int n) {
    for (int i = n - 1; i >= 0; i--) {
      if (checkPrime(index[i]) == true) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 148: Tìm số nguyên tố cuối cùng trong mảng 1 chiều các số nguyên. Nếu mảng không có số nguyên tố thì trả về  -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);

    print(findLastPrime(index, n));
  }
}
