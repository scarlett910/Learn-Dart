import 'dart:io';
import 'dart:math';

class Bai151 {
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

  int findLargestPrime(List index, int n) {
    int b = index[0];
    for (int i = 0; i < n; i++) {
      if (checkPrime(index[i]) == true && index[i] > b) {
        return b = index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 151: Hãy tìm số nguyên tố lớn nhất trong mảng 1 chiều các số nguyên. Nếu mảng không có số nguyên tố thì trả về -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);

    print(findLargestPrime(index, n));
  }
}
