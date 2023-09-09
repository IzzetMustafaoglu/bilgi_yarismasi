import 'package:bilgi_yarismasi/soru.dart';

class TestVeri{
  int _i = 0;

  List <Soru> _soruBankasi = [         // _ ile private oldu
    Soru(soruMetni: "Titanic gelmiş geçmiş en büyük gemidir", soruYaniti: false),
    Soru(soruMetni: "Dünyadaki tavuk sayısı insan sayısından fazladır", soruYaniti: true),
    Soru(soruMetni: "Kelebeklerin ömrü bir gündür", soruYaniti: false),
    Soru(soruMetni: "Dünya düzdür", soruYaniti: false),
    Soru(soruMetni: "Kaju fıstığı aslında bir meyvenin sapıdır", soruYaniti: true),
    Soru(soruMetni: "Fatih Sultan Mehmet hiç patates yememiştir", soruYaniti: true),
  ];

  String getSoruMetni(){
    return _soruBankasi[_i].soruMetni;
  }

  bool getSoruYaniti(){
    return _soruBankasi[_i].soruYaniti;
  }

  void sonrakiSoru(){
    if(_i + 1 < _soruBankasi.length)  _i++;
  }
  bool testBittiMi(){
    if(_i + 1 >= _soruBankasi.length){
      return true;
    }
    else{
      return false;
    }
  }
  void testiSifirla(){
    _i = 0;
  }
}