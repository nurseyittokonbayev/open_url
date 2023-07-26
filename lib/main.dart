import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _launchURL() async {
    const url = 'https://github.com/nurseyittokonbayev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    _launchURL(); // Открываем ссылку при запуске приложения

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Открываем ссылку'),
        ),
        body: Center(
          child: Text('Ссылка откроется при запуске приложения!'),
        ),
      ),
    );
  }
}
