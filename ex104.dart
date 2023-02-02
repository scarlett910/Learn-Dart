import 'user_input.dart';
import 'day_in_month.dart';

// Bài 104: Viết chương trình nhập ngày, tháng, năm. Tính xem ngày đó là ngày thứ bao nhiêu trong năm
class Bai104 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int nam = inputOpt.enterInput('Nhap nam:');
    int thang = inputOpt.enterInput('Nhap thang:');
    int ngay = inputOpt.enterInput('Nhap ngay:');

    CheckDayInMonth checkDay = CheckDayInMonth();

    // total = ngay + for-loop(totalDayInMonth(thang, nam))
    if (checkDay.isLeapYear(nam) == false && ngay == 29) {
      print('ngay ko ton tai');
    } else {
      int total = 0;
      for (int month = 1; month < thang; month++) {
        total += checkDay.totalDayInMonth(month, nam);
      }
      total = ngay + total;
      print(total);
    }
  }
}
