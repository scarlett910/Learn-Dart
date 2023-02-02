class CheckDayInMonth {
  bool isLeapYear(int nam) {
    if (nam % 400 == 0 || (nam % 4 == 0 && nam % 100 != 0)) {
      return true;
    } else {
      return false;
    }
  }

  int totalDayInMonth(int thang, int nam) {
    int dayInMonth = 0;
    switch (thang) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        dayInMonth = 31;
        break;
      case 4:
      case 6:
      case 9:
      case 11:
        dayInMonth = 30;
        break;
      default:
        if (isLeapYear(nam) == true) {
          dayInMonth = 29;
        } else {
          dayInMonth = 28;
        }
    }
    return dayInMonth;
  }
}
