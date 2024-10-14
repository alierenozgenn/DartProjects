import 'dart:io';

void main() {
  print("Birinci sayıyı girin:");
  String? input1 = stdin.readLineSync();
  double? sayi1 = double.tryParse(input1!);
  if (sayi1 == null) {
    print("Hata: Geçersiz bir sayı girdiniz.");
    return;
  }

  print("İkinci sayıyı girin:");
  String? input2 = stdin.readLineSync();
  double? sayi2 = double.tryParse(input2!);
  if (sayi2 == null) {
    print("Hata: Geçersiz bir sayı girdiniz.");
    return;
  }

  print("İşlem türünü girin (+, -, *, /):");
  String? islem = stdin.readLineSync();

  if (islem != null) {
    switch (islem) {
      case '+':
        print("Sonuç: ${sayi1 + sayi2}");
        break;
      case '-':
        print("Sonuç: ${sayi1 - sayi2}");
        break;
      case '*':
        print("Sonuç: ${sayi1 * sayi2}");
        break;
      case '/':
        if (sayi2 != 0) {
          print("Sonuç: ${sayi1 / sayi2}");
        } else {
          print("Hata: Sıfıra bölme işlemi yapılamaz.");
        }
        break;
      default:
        print("Hata: Geçersiz bir işlem girdiniz.");
        break;
    }
  } else {
    print("Hata: Geçersiz bir işlem girdiniz.");
  }
}
