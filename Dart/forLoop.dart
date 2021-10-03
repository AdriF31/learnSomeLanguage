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
    for (int j = 2 * (6 - i); j >= 0; j--) {//jika 
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write(" *");
    }
    stdout.writeln();
  }
}
