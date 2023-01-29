class Bai87 {
  void resolve() {
    // Bài 87: Tìm số nguyên dương n nhỏ nhất sao cho 1 + 2 + … + n > 10000
    int sum = 0;
    int i = 0;
    while (!(sum > 1000)) {
      i += 1;
      sum += i;
    }
    print(i);
  }
}
