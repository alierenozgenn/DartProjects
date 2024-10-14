import 'dart:io';

void main() {
  List<int> sayilar = [];

  for (int i = 0; i < 10; i++) {
    stdout.write("${i + 1}. sayıyı girin: ");
    int? sayi = int.tryParse(stdin.readLineSync()!);
    if (sayi != null) {
      sayilar.add(sayi);
    } else {
      print("Geçersiz bir giriş yaptınız. Lütfen bir sayı girin.");
      i--;
    }
  }

  List<int> ciftSayilar = sayilar.where((sayi) => sayi % 2 == 0).toList();

  if (ciftSayilar.isNotEmpty) {
    print("Çift sayılar: $ciftSayilar");
  } else {
    print("Listede hiç çift sayı yok.");
  }
}
