import 'user_input.dart';
import 'day_in_month.dart';

// Bài 102: Viết chương trình nhập vào 1 ngày ( ngày, tháng, năm). Tìm ngày kế ngày vừa nhập (ngày, tháng, năm)
class Bai102 {
  CheckDayInMonth checkDay = CheckDayInMonth();
  void nextDay(int ngay, int thang, int nam) {
    if (ngay < checkDay.totalDayInMonth(thang, nam)) {
      ngay++;
    } else if (thang < 12) {
      ngay = 1;
      thang++;
    } else {
      ngay = thang = 1;
      nam++;
    }
    print('Ngay tiep theo la: $ngay/$thang/$nam.');
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int nam = inputOpt.enterInput('Nhap nam:');
    int thang = inputOpt.enterInput('Nhap thang:');
    int ngay = inputOpt.enterInput('Nhap ngay:');

    if (checkDay.isLeapYear(nam) == false && ngay == 29) {
      print('ngay khong ton tai');
    } else {
      nextDay(ngay, thang, nam);
    }
  }
}
