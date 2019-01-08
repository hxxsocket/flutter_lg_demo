import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Locale> an = [
    const Locale('zh', 'CH'),
    const Locale('en', 'US'),
  ];
  List<Locale> ios = [
    const Locale('en', 'US'),
    const Locale('zh', 'CH'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter language Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        ChineseCupertinoLocalizations.delegate,
      ],
      supportedLocales: Platform.isIOS ? ios : an,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            new Container(
              alignment: Alignment.center,
              child: new TextFormField(
                scrollPadding: const EdgeInsets.all(10.0),
                decoration: new InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    hintText: '搜索商品名称或粘贴商品名称',
                    hintStyle:
                        new TextStyle(fontSize: 14.0, color: Color(0xFF999999)),
                    border: InputBorder.none),
                onEditingComplete: () {},
              ),
              decoration: new BoxDecoration(border: new Border.all(width: 1.0,color: Color(0xFFFF0000))),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
