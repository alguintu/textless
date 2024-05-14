import 'package:flutter/material.dart';
import 'package:textless/textless.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextLess',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TextLess'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: "TextLess".toUpperCase().headlineSmall.letterSpacing(15).light,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            "Headline1".displayLarge.overflowFade.softWrap(false),
            "Headline2".displayMedium,
            "Headline3".displaySmall,
            "Headline4".headlineMedium,
            "Headline5".headlineSmall,
            "Headline6".titleLarge,
            "Subtitle1".titleMedium,
            "Subtitle1".titleSmall,
            "BodyText1".bodyLarge,
            "BodyText2".style(TextStyle(color: Colors.red)),
            "Button".labelLarge,
            "Caption".bodySmall,
            "Overline".labelSmall,
            "Custom".text.color(Colors.blue),
          ],
        ),
      ),
    );
  }
}
