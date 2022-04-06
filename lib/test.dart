import 'package:flutter/material.dart';
import 'kolay_test.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        centerTitle: true,
        title: Text('TEST'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GestureDetector(
                child: Image.asset('assets/images/resim3.jpg'),
                onTapCancel: () {
                  ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                      content: new Text('Resme tıklar gibi yaptın vazgeçtin')));
                },
              ),
              const SizedBox(
                height: 60,
              ),
              const Icon(
                Icons.border_color, // ya da mode_edit yap.
                color: Colors.blueGrey,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                      child: Text('Teste Başlayınız'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => kolay_test()),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
