import 'dart:io';

void main() {
  //rigth triangle
  // for (int i = 0; i < 5; i++) {
  //   for (int j = 0; j <= i; j++) {
  //     stdout.write("* ");
  //   }
  //   stdout.writeln();
  // }

  for (int i = 0; i < 6; i++) { //membuat baris
  //membuat kolom
    for (int j = 2 * (6 - i); j >= 0; j--) {//jika jumlah kolom pada baris pertama adalah 2*(baris-i) maka print " " dan j--
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write(" *");
    }
    stdout.writeln();
  }
}
