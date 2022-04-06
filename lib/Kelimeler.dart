import 'package:flutter/material.dart';
import 'package:kelimeler/kolay_kelime.dart';
import 'package:kelimeler/test.dart';

class Kelimeler extends StatefulWidget {
  const Kelimeler({Key? key}) : super(key: key);

  @override
  _KelimelerState createState() => _KelimelerState();
}

class _KelimelerState extends State<Kelimeler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[50],
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          centerTitle: true,
          title: const Text('BAŞLANGIÇ'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                  ),
                  child: const Text(
                    'Menü',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  )),
              ListTile(
                tileColor: Colors.blueGrey[200],
                //leading: Icon(Icons.kolay),
                title: Text('İngilizce Kalıplar ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black45,
                    )),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kolay_kelime()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Soldaki sekmeden İngilizce Kalıplarına ulaşabilirsiniz.',
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontFamily: 'Caveat'),
          ),
          GestureDetector(
            onLongPress: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => test())),
            child: Image.asset('assets/images/images.jpg'),
          ),
          const Text(
            'Fotoğrafa basılı tutarak Test sayfasına geçebilirsiniz. '
            'Başarılar...',
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontFamily: 'Caveat'),
          ),
        ])));
  }
}
