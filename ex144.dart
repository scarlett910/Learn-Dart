import 'dart:io';
import 'dart:math';

import 'so_nguyen_to.dart';
import 'user_input.dart';

class Bai144 {
  int findFirstPrime(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (SoNguyenTo.isSoNguyenToV2(index[i]) == true) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    // Bài 144: Tìm số nguyên tố đầu tiên trong mảng 1 chiều các số nguyên. Nếu mảng không có số nguyên tố thì trả về -1
    int n = UserInput.nhapSoV2('Mời bạn nhập 1 số bạn thích');
    List<int> listInt = UserInput.taoMangSoNguyen(n);

    print(listInt);

    print(findFirstPrime(listInt, n));
  }
}
