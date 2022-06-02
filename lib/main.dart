import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binary Calculator',
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
  // 0 and 1
  Widget _buildDigitButton(String digit) => Expanded(
        flex: 2,
        child: OutlineButton(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          borderSide: BorderSide(color: Colors.white),
          splashColor: Colors.white,
          textColor: Colors.white,
          onPressed: () {},
          child: Text(
            digit,
            style: TextStyle(
              fontSize: 150.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  _buildOperationButton(String symbol) => OutlineButton(
        padding: EdgeInsets.symmetric(vertical: 24.0),
        borderSide: BorderSide(color: Colors.white),
        splashColor: Colors.white,
        textColor: Colors.white,
        onPressed: () => {},
        child: Text(
          symbol,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  // /,*,-,+
  Widget _buildOperationButtons() => Expanded(
        flex: 1,
        child: Column(
          children: <Widget>[
            _buildOperationButton('/'),
            _buildOperationButton('*'),
            _buildOperationButton('-'),
            _buildOperationButton('+'),
          ],
        ),
      );

  //clear button and equal button
  _buildBottomButton(String text, int flex) => Expanded(
        flex: flex,
        child: OutlineButton(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          borderSide: BorderSide(color: Colors.white),
          splashColor: Colors.white,
          textColor: Colors.white,
          onPressed: () => {},
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  Widget _buildDisplayText() => Text(
        '0',
        style: TextStyle(
          fontSize: 80.0,
          color: Colors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
          top: 30.0,
        ),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                vertical: 35.0,
                horizontal: 12.0,
              ),
              child: _buildDisplayText(),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: <Widget>[
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _buildDigitButton('0'),
                      _buildDigitButton('1'),
                      _buildOperationButtons(),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _buildBottomButton('CLEAR', 2),
                      _buildBottomButton('=', 3),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
