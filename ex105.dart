import 'user_input.dart';

class Bai105 {
  void resolve() {
    // Bài 105: Viết chương trình nhập 1 số nguyên có 2 chữ số.  Hãy in ra cách đọc của số nguyên này
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap n:');

    int hangchuc = n ~/ 10;
    int donvi = n % 10;
    String inSo(var chuSo) {
      String inChuSo = '';
      switch (chuSo) {
        case 1:
          if (chuSo == hangchuc) {
            inChuSo = 'Muoi';
          } else {
            inChuSo = 'Mot';
          }
          break;
        case 2:
          inChuSo = 'Hai';
          break;
        case 3:
          inChuSo = 'Ba';
          break;
        case 4:
          inChuSo = 'Bon';
          break;
        case 5:
          inChuSo = 'Nam';
          break;
        case 6:
          inChuSo = 'Sau';
          break;
        case 7:
          inChuSo = 'Bay';
          break;
        case 8:
          inChuSo = 'Tam';
          break;
        case 9:
          inChuSo = 'Chin';
          break;
      }
      return inChuSo;
    }

    String inHangChuc = inSo(hangchuc);
    String inDonVi = inSo(donvi);
    if (n < 10 || n > 99) {
      print('Khong hop le');
    } else {
      if (inHangChuc == 'Muoi') {
        print('$inHangChuc $inDonVi');
      } else {
        print('$inHangChuc Mươi $inDonVi');
      }
    }
  }
}
