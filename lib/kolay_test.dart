import 'package:flutter/material.dart';
import 'constants.dart';
import 'kolay_test_veri.dart';
import 'main.dart';

// ignore: camel_case_types
class kolay_test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.red[100],
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];

  Kolay_TestVeri test_1 = Kolay_TestVeri();

  void butonFonksiyonu(bool secilenButon) {
    if (test_1.testBittiMi() == true) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(actions: <Widget>[
            // usually buttons at the bottom of the dialog
            ElevatedButton(
                child: Row(
                  children: const [
                    Text("Test Bitti!  Anasayfaya Gidiniz:)"),
                  ],
                ),
                onPressed: () {
                  // Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })
          ]);
        },
      );
    } else {
      setState(() {
        test_1.getSoruYaniti() == secilenButon
            ? secimler.add(dogruIconu)
            : secimler.add(yanlisIconu);

        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 40.0,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 10, //dikeyde bosluk
          spacing: 10, //yatayda bosluk
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          padding: const EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: const Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            butonFonksiyonu(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          padding: const EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: const Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            butonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

class Soru {
  String soruMetni;
  bool soruYaniti;

  Soru({required this.soruMetni, required this.soruYaniti});
}
