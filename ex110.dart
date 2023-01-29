class Bai110 {
  void resolve() {
    // Bài 110: Cần có tổng 200000 đồng từ 3 loại giấy bạc 1000 đồng, 2000 đồng, 5000 đồng. Lập chương trình để tìm ra tất cả các phương án có thể
    for (int i = 0; i <= 200; ++i) {
      for (int j = 0; j <= 100; ++j) {
        for (int k = 0; k <= 40; ++k) {
          if (i * 1000 + j * 2000 + k * 5000 == 200000) {
            print(i);
            print(j);
            print(k);
          }
        }
      }
    }
  }
}
