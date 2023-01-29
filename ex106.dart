import 'dart:io';

class Bai106 {
  void resolve() {
    // Bài 106 Viết chương trình nhập 1 số nguyên có 3 chữ số.  Hãy in ra cách đọc của số nguyên này
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    int hangtram = n ~/ 100;
    int hangchuc = (n - hangtram * 100) ~/ 10;
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

    String inHangTram = inSo(hangtram);
    String inHangChuc = inSo(hangchuc);
    String inDonVi = inSo(donvi);
    if (n < 100 || n > 999) {
      print('Khong hop le');
    } else {
      if (inHangChuc == 'Muoi') {
        print("$inHangTram Tram $inHangChuc $inDonVi");
      } else {
        print('$inHangTram Tram $inHangChuc Muoi $inDonVi');
      }
    }
  }
}
