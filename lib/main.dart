import 'package:flutter/material.dart';

void main() { 
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var inputTextController = new TextEditingController();
  var outputTextController = new TextEditingController();
  
  buttonPressed(String buttonText){
      if(inputTextController.text==""){
        print("text empty");
      }
      setState(() {
       double num = double.parse(inputTextController.text);
       //inputTextController.text = "";
       if(buttonText == "DOLLAR"){
         outputTextController.text=(num*0.014).toString();
       }else if(buttonText=="EURO"){
         outputTextController.text=(num*0.012).toString();
       }else if(buttonText=="PONDS"){
         outputTextController.text=(num*0.011).toString();
       }else if(buttonText=="AUS"){
         outputTextController.text=(num*0.01).toString();
       }else if(buttonText=="CAN"){
         outputTextController.text=(num*0.015).toString();
       }else if(buttonText=="YEN"){
         outputTextController.text=(num*0.018).toString();
       }else if(buttonText=="DINAR"){
         outputTextController.text=(num*0.3).toString();
       }else if(buttonText=="USDT"){
         outputTextController.text=(num*0.1).toString();
       }else if(buttonText=="INR"){
         outputTextController.text=(num*69).toString();
       }
    }
  );
  }
Widget buildButton(String buttonText){
return new Expanded(
child: new OutlineButton(
  padding: new EdgeInsets.all(24.0),
  child: new Text(
    buttonText,
    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),

  ),
  onPressed: () => buttonPressed(buttonText),

),

);
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Currency Convertor"),
        ),
        body: Column(
          children: <Widget>[
            Text("Enter Value to Convert"),
            TextField(
              decoration: InputDecoration(hintText: "value"),
              keyboardType: TextInputType.numberWithOptions(),
              controller: inputTextController,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Result"
              ),
              enabled: false,
              controller: outputTextController,
            ),
            new Expanded(
              child: new Divider(
                color: Colors.teal,
                height: 20.0,
              ),
            ),
            new Container(
              margin: EdgeInsets.only(bottom: 60.0),
              child: new Column(children: <Widget>[
                new Row(children: <Widget>[
                  buildButton("DOLLAR"),
                  buildButton("EURO"),
                  buildButton("POUNDS")
                ]),
                new Row(children: <Widget>[
                  buildButton("AUS"),
                  buildButton("CAN"),
                  buildButton("YEN"),
                ]),
                new Row(children: <Widget>[
                  buildButton("DINAR"),
                  buildButton("USDT"),
                  buildButton("INR"),
                ]),

              ],),
            )
          ],
          
        ),
      ),
    );
  }
}

