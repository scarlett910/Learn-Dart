import 'dart:io';

import 'so_nguyen_to.dart';
import 'user_input.dart';

class Bai93 {
  void resolve() {
    // Bài 93: Viết chương trình kiểm tra 1 số có phải là số nguyên tố hay không
    int n = UserInput.nhapSoV2('Mời bạn nhập 1 số nguyên:');

    if (SoNguyenTo.isSoNguyenToV2(n)) {
      print('La so nguyen to');
    } else {
      print('Khong la so nguyen to');
    }
  }
}
