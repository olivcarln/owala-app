import 'package:flutter/material.dart';

class SizeConfig {
  // class media query adalah class yang berfungsi untuk membuat aplikasi responsive
  // dengan cara mengambil ukuran aktual pada layar pada platform
  static MediaQueryData _mediaQuerydata = MediaQueryData.fromView(
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window
  );

  // varibel untuk menampung default size dari aplikasi, 
  //sebelum dideploy ke platform yang spesifik dan 
  //mendapatkan aktual dari platform tersebut 
  // (misalnya: ddideploy ke platform android)
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;

  // fungsi dari function ini adalah untuk pemnggilan awal ketika aplikasi dijalankan
  // dan untuk mendapatkan ukuran dari layar platform
  void init(BuildContext context) {
    // berfungsi untuk mengambil ukuran aktual dari platform
    // karena didalam variabel _mediaQueryData, 
    // didalamnya memanggil class media Query
    // yang class media Query itu sendiri berfungsi untuk:
    // mengambil ukuran aktual dari platform
    _mediaQuerydata = MediaQuery.of(context);
    // untuk mengambil hanya data ukuran width saja 
    screenWidth = _mediaQuerydata.size.width;
      // untuk mengambil hanya data ukuran height saja 
    screenHeight = _mediaQuerydata.size.height;
  }
}

// menggunakan size standar dari handphonr iphone x (812 x 375)
double getProporsionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // ini adalah perhitungan untuk menghasilkan nilai 
  //dan ukuran objek yang responsif sesuai platform
  return (inputHeight / 812.0) * screenHeight;
}
double getProporsionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}