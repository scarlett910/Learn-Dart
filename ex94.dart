class Bai94 {
  void resolve() {
    // Bài 94: Viết chương trình in ra tất cả các số lẻ nhỏ hơn 100 trừ các số 5, 7, 93
    for (int n = 0; n < 100; n++) {
      if (n % 2 != 0 && n != 5 && n != 7 && n != 93) {
        print(n);
      }
    }
  }
}
