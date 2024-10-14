import 'dart:io';

class Ogrenci {
  String ad;
  String soyad;
  List<double> notlar = [];

  Ogrenci(this.ad, this.soyad);

  void notEkle(double not) {
    notlar.add(not);
    print("Not eklendi: $not");
  }

  double ortalamaHesapla() {
    if (notlar.isEmpty) {
      print("Henüz not eklenmedi.");
      return 0;
    }
    double toplam = notlar.reduce((a, b) => a + b);
    return toplam / notlar.length;
  }

  void ogrenciBilgileriGoster() {
    print("Ad: $ad Soyad: $soyad");
    print("Notlar: $notlar");
    print("Ortalama: ${ortalamaHesapla()}");
  }
}

void main() {
  print("Öğrencinin adını giriniz: ");
  String? ad = stdin.readLineSync();

  print("Öğrencinin soyadını giriniz: ");
  String? soyad = stdin.readLineSync();

  Ogrenci ogrenci = Ogrenci(ad ?? "", soyad ?? "");

  while (true) {
    print("Öğrenciye not eklemek istiyor musunuz? (evet/hayir): ");
    String? cevap = stdin.readLineSync()?.toLowerCase().trim();

    if (cevap == "hayir") {
      ogrenci.ogrenciBilgileriGoster();
      break;
    } else if (cevap == "evet") {
      print("Lütfen eklemek istediğiniz notu giriniz: ");
      String? notInput = stdin.readLineSync();
      double? notDegeri = double.tryParse(notInput ?? "");

      if (notDegeri != null) {
        ogrenci.notEkle(notDegeri);
      } else {
        print("Geçersiz not girdiniz. Lütfen bir sayı giriniz.");
      }
    } else {
      print("Geçersiz giriş. Lütfen 'evet' veya 'hayir' yazınız.");
    }
  }
}
