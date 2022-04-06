import 'kolay_test.dart';

// ignore: camel_case_types
class Kolay_TestVeri {
  int _soruIndex = 0;

  final List<Soru> _soruBankasi = [
    Soru(soruMetni: 'SORU 1 Believe=İnanç ', soruYaniti: true),
    Soru(soruMetni: 'SORU 2 Nose=Gürültülü', soruYaniti: false),
    Soru(soruMetni: 'SORU 3 Minute=Dakika', soruYaniti: true),
    Soru(soruMetni: 'SORU 4 Garden=Bahçe', soruYaniti: true),
    Soru(soruMetni: 'SORU 5 Place=Uçak', soruYaniti: false),
    Soru(soruMetni: 'SORU 6 Dangerous=Tehlikeli', soruYaniti: true),
    Soru(soruMetni: 'SORU 7 Cry=Ağlamak', soruYaniti: true),
    Soru(soruMetni: 'SORU 8      Ball=Top', soruYaniti: true),
    Soru(soruMetni: 'SORU 9   Cloud=Rüzgarlı', soruYaniti: false),
    Soru(soruMetni: 'SORU 10  Wind=Bulut', soruYaniti: false),
    Soru(soruMetni: 'SORU 11  Answer=Cevap', soruYaniti: true),
    Soru(soruMetni: 'SORU 12  Frog=Kurbağa', soruYaniti: true),
    Soru(soruMetni: 'SORU 13  Quite=Sessiz', soruYaniti: false),
    Soru(soruMetni: 'SORU 14  Flag=Bayrak', soruYaniti: true),
    Soru(soruMetni: 'SORU 15  Grey=Yeşil', soruYaniti: false),
    Soru(soruMetni: 'SORU 16  Spring=İlkbahar', soruYaniti: true),
    Soru(soruMetni: 'SORU 17  June=Temmuz', soruYaniti: false),
    Soru(soruMetni: 'SORU 18 Weekend=Hafta sonu', soruYaniti: true),
    Soru(soruMetni: 'SORU 19 Remember=Hatırlamak', soruYaniti: true),
    Soru(soruMetni: 'SORU 20 Sunday=Pazar', soruYaniti: true),
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruIndex + 1 < _soruBankasi.length) {
      _soruIndex++;
    }
  }

  bool testBittiMi() {
    if (_soruIndex + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruIndex = 0;
  }
}
