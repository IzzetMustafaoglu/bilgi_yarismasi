import 'package:bilgi_yarismasi/soru.dart';
import 'package:bilgi_yarismasi/test_veri.dart';
import 'package:flutter/material.dart';

import 'constants.dart';


void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  int i = 0;
  List<Widget> secimler = [];

  TestVeri test_1 = TestVeri();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.soruBankasi[i].soruMetni,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            bool dogruYanit = test_1.soruBankasi[i].soruYaniti;
                            setState(() {
                               if(i!=5) {
                                 if (dogruYanit == false) {
                                   secimler.add(kDogruIcon);
                                 }
                                 else {
                                   secimler.add((kYanlisIcon));
                                 }
                                 i++;
                              }
                            });
                          },
                        ))),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green, // Butonun arka plan rengini kırmızı

                      ),
                      child: Icon(
                        Icons.thumb_up,
                        size: 30.0,
                        color: Colors.white,),
                      onPressed: () {
                        bool dogruYanit = test_1.soruBankasi[i].soruYaniti;
                        setState(() {
                          if(i!=5) {
                            dogruYanit == true ? secimler.add(kDogruIcon)
                                : secimler.add(kYanlisIcon);
                            i++;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
