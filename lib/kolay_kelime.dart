import 'package:flutter/material.dart';

class kolay_kelime extends StatefulWidget {
  @override
  _kolay_kelimeState createState() => _kolay_kelimeState();
}

class _kolay_kelimeState extends State<kolay_kelime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        centerTitle: true,
        title: const Text('İngilizce Kalıplar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                //color: Colors.blue,
                child: Text('What’s up? – Naber?'),
                //height: 20,
              ),
              Container(
                child: Text('So so – İdare eder.'),
              ),
              Container(
                child: Text('How is it going? – Nasıl gidiyor?'),
              ),
              Container(
                child: Text('Let’s go! – Haydi gidelim!'),
              ),
              Container(
                child: Text('Give me a hand! – Yardım et, bir el at!'),
              ),
              Container(
                child: Text('I will see to it! – İlgileneceğim, bakacağım.'),
              ),
              Container(
                child: Text('I am broke! – Parasızım!'),
              ),
              Container(
                child: Text(' It sounds good! – Kulağa hoş geliyor!'),
              ),
              Container(
                child: Text('Lets get to the point! – Sadede gelelim!'),
              ),
              Container(
                child: Text('It is beyond me! – Bu beni aşar!'),
              ),
              Container(
                child: Text('You can trust me!– Bana güvenebilirsin!'),
              ),
              Container(
                child: Text('It is better than nothing! – Hiç yoktan iyidir!'),
              ),
              Container(
                child:
                    Text(' Long time no see! – Görüşmeyeli uzun zaman oldu!'),
              ),
              Container(
                child: Text('Let’s hangout tonigh!– Bu gece buluşalım.'),
              ),
              Container(
                child: Text(' I lost my temper! – Sinirlerim bozuldu!'),
              ),
              Container(
                child: Text('I dont mind!– Benim için fark etmez!'),
              ),
              Container(
                child: Text(' I am proud of you! – Seninle gurur duyuyorum.'),
              ),
              Container(
                child: Text('Follow me. – Beni takip et.'),
              ),
              Container(
                child: Text(
                    'I have a surprise for you. – Sana bir sürprizim var.'),
              ),
              Container(
                child: Text('Do me a favor – Bana bir iyilik yap.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
