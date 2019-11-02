import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   
   Widget btn(String lol, btncolor){
     return MaterialButton(
       padding: EdgeInsets.all(20.0),
       child: Text(lol),
       color: Colors(btncolor),
       onPressed: (){},
       
     );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column
          (
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
                Text("Currency Converter",
                style: TextStyle(
                  color: Colors.white, 
                    fontStyle: FontStyle.italic),),
                    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding
                    (
                    padding: EdgeInsets.only(top:10),
                    child: Container(
                    padding: EdgeInsets.all(20.0),
                    height: 180.0,
                    width: 300.0,
        
              decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    ),
            child: Column(
            children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0
                  ),
                  child: TextField(
                    
                    decoration: InputDecoration(
                      hintText: "User Input",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    ),
                    ),
                
                    TextField(
                      obscureText: true,
                      autocorrect: false,
                      enabled: false,
                    decoration: InputDecoration(
                      hintText: "Result",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                    ),
                    
                    ),
                    
                    
                 ],
               ),
             ) 
          ),
            
                    ],
                  ) ,
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                     height: 300.0,
                     width: 320.0,
        
                    decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                       btn("DOLLAR"),
                       btn("EURO"),
                       btn("POUNDS")
                ]),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  btn("AUS"),
                  btn("CAN"),
                  btn("YEN"),
                ]),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  btn("DINAR"),
                  btn("USDT"),
                  btn("INR"),
                ]),
                      ],
                      
                      
                    ),
                  )
                  )   
        ],
      )
    );
  }
}