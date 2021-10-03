import 'dart:io';

void main() {
  int? p;
  int? l;
  const double pi = 3.14;
  int? r;
  num keliling;
  num luas;

  print("------------------bangun datar---------------");
  print("1. Persegi");
  print("2. Lingkaran");
  print("3. Layang-Layang");
  stdout.write("pilih bangun datar : ");
  int? bangunDatar = int.parse(stdin.readLineSync()!);
  if (bangunDatar == 1) {
    print("------------Operasi yang tersedia----------------");
    print("1. Luas Persegi");
    print("2. Keliling Persegi");
    stdout.write("Pilih operasi yang diinginkan : ");
    int? operasi = int.parse(stdin.readLineSync()!);
    switch (operasi) {
      case 1:
        stdout.write("masukkan panjang persegi : ");
        p = int.parse(stdin.readLineSync()!);
        stdout.write("masukkan lebar persegi : ");
        l = int.parse(stdin.readLineSync()!);
        luas = Persegi().LuasPersegi(p, l);
        print("Luas persegi adalah : ${luas}");
        break;
      case 2:
        print("masukkan panjang persegi : ");
        p = int.parse(stdin.readLineSync()!);
        print("masukkan lebar persegi : ");
        l = int.parse(stdin.readLineSync()!);
        keliling = Persegi().KelilingPersegi(p, l);
        print("keliling persegi adalah : ${keliling}");
        break;
      case 3:
        stdout.write("masukkan jari-jari lingkaran: ");
        r = int.parse(stdin.readLineSync()!);
        luas = Lingkaran().LuasLingkaran(pi, r);
        print("keliling persegi adalah : ${luas}");
        break;
      default:
        print("input salah");
    }
  } else if (bangunDatar == 2) {
    print("------------Operasi yang tersedia----------------");
    print("1. Luas Lingkaran");
    print("2. Keliling Lingkaran");
    stdout.write("Pilih operasi yang diinginkan : ");
    int? operasi = int.parse(stdin.readLineSync()!);
    switch (operasi) {
      case 1:
        stdout.write("masukkan jari-jari lingkaran: ");
        r = int.parse(stdin.readLineSync()!);
        luas = Lingkaran().LuasLingkaran(pi, r);
        print("Luas Layang-Layang adalah : ${luas}");
        break;
      case 2:
        stdout.write("masukkan jari-jari lingkaran: ");
        r = int.parse(stdin.readLineSync()!);
        keliling = Lingkaran().KelilingLingkaran(pi, r);
        print("Keliling Layang-Layang adalah : ${keliling}}");
        break;
      default:
        print("input salah");
    }
  } else if (bangunDatar == 3) {
    print("------------Operasi yang tersedia----------------");
    print("1. Luas Layang Layang");
    print("2. Keliling Layang Layang");
    stdout.write("Pilih operasi yang diinginkan : ");
    int? operasi = int.parse(stdin.readLineSync()!);

    switch (operasi) {
      case 1:
        int? d1, d2;

        stdout.write("d1 : ");
        d1 = int.parse(stdin.readLineSync()!);
        stdout.write("d2: ");
        d2 = int.parse(stdin.readLineSync()!);

        luas = LayangLayang().luas(d1, d2);
        print("Luas Lingkaran adalah : ${luas}");

        break;
      case 2:
        int? a, b, c, d;
        stdout.write("sisi a: ");
        a = int.parse(stdin.readLineSync()!);
        stdout.write("sisi b: ");
        b = int.parse(stdin.readLineSync()!);
        stdout.write("sisi c: ");
        c = int.parse(stdin.readLineSync()!);
        stdout.write("sisi d: ");
        d = int.parse(stdin.readLineSync()!);
        keliling = LayangLayang().keliling(a, b, c, d);
        print("Luas Lingkaran adalah : ${keliling}");
        break;

      default:
        print("input salah");
    }
  }
}

class Persegi {
  int LuasPersegi(p, l) {
    int luas = p * l;
    return luas;
  }

  int KelilingPersegi(p, l) {
    int keliling;
    keliling = (p * 2) + (l * 2);
    return keliling;
  }
}

class Lingkaran {
  double LuasLingkaran(pi, r) {
    double luas = pi * r * r;
    return luas;
  }

  double KelilingLingkaran(pi, r) {
    double keliling = pi * (r * 2);
    return keliling;
  }
}

class LayangLayang {
  double luas(d1, d2) {
    double luas = 1 / 2 * d1 * d2;
    return luas;
  }

  double keliling(a, b, c, d) {
    double keliling = a + b + c + d;
    return keliling;
  }
}
