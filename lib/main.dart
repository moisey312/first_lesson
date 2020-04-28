import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Калькулятор',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = '';
  String action = '';
  double num1 = 0;
  double num2 = 0;

  BoxDecoration numberDecor() {
    return BoxDecoration(
      color: Colors.grey,
    );
  }

  BoxDecoration actionDecor() {
    return BoxDecoration(
      color: Colors.orange,
    );
  }

  TextStyle text() {
    return TextStyle(
        color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold);
  }

  void actionFun(String action) {
    num1 = double.parse(value);
    this.action = action;
  }

  @override
  Widget build(BuildContext context) {
    double widget_h = MediaQuery.of(context).size.height / 5;
    double widget_w = MediaQuery.of(context).size.width / 4;

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                value = '';
              });
            },
            child: Container(
              height: widget_h,
              width: double.infinity,
              child: Text(value),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '7',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '8',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '9',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: actionDecor(),
                child: FlatButton(
                  child: Text(
                    '÷',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '4',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '5',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '6',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: actionDecor(),
                child: FlatButton(
                  child: Text('x', style: text()),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '1',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '2',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '3',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: actionDecor(),
                child: FlatButton(
                  child: Text(
                    '-',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    '0',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: numberDecor(),
                child: FlatButton(
                  child: Text(
                    ',',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: actionDecor(),
                child: FlatButton(
                  child: Text(
                    '=',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: widget_h,
                width: widget_w,
                decoration: actionDecor(),
                child: FlatButton(
                  child: Text(
                    '+',
                    style: text(),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
