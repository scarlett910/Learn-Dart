class SoNguyenTo {
  bool isSoNguyenTo(int n) {
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

  static bool isSoNguyenToV2({required int number}) {
    int count = 0;
    if (number < 2) {
      return false;
    } else {
      for (int i = 1; i <= number; i++) {
        if (number % i == 0) {
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
}
