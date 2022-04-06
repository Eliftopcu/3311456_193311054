import 'package:flutter/material.dart';
import 'Kelimeler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const RotatedBox(
      quarterTurns: 3,
    );
    return Scaffold(
        backgroundColor: Colors.red[50],
        appBar: AppBar(
            backgroundColor: Colors.red[200],
            centerTitle: true,
            title: const Text('KELİME TESTİ')),
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const CircleAvatar(
                radius: 140,
                backgroundImage: AssetImage('assets/images/resim2.png')),
            Padding(
              padding: const EdgeInsets.all(50.0),
              //color: Colors.blue[300],
              child: GestureDetector(
                child: const Text(
                  'HOŞ GELDİNİZ',
                  style: TextStyle(
                      fontSize: 25, color: Colors.red, fontFamily: 'Pacifico'),
                ),
                onDoubleTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(new SnackBar(content: new Text('WELCOME')));
                },
              ),
            ),
            GestureDetector(
                onTapCancel: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(new SnackBar(content: new Text('star')));
                },
                child: Icon(
                  Icons.grade,
                  color: Colors.redAccent[100],
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                    child: Text('Giriş Ekranı'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kelimeler()),
                      );
                    })),
          ]),
        ));
  }
}
