import 'package:flutter/material.dart';

class Contador extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ContadorState();
} 

class _ContadorState extends State<Contador>{
  int numA=0;
  int numB=0;
  Text valor;
  
  Color getColor(num){
    if (num > 0)
      return Colors.green[900];
    else if(num < 0)
      return Colors.red;
    else
      return Colors.black;
  }
  void increment(bool isA) {
    setState(() {
      if (isA) {
        numA++;
        valor = Text("");
        return;
      }

      numB++;
    });
  }
  void decrement(bool isA) {
    setState(() {
      if (isA) {
        numA--;
        return;
      }
      numB--;
    });
  }
  @override
  Widget build( BuildContext context){
    
    return Container(
      padding: EdgeInsets.all(0),      
      // ignorePaddding: true,
      child: Center(
        child: Container(
          height:600,
          width: 350,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pinkAccent,
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Title(
                child: Text("Contador Cubos Academy",style:TextStyle(color: Colors.black, wordSpacing: 10),),
                color: Colors.pink,
              ),
            ),
            body: Container(
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: Center(
                child: Text.rich(TextSpan(
                  text: "Vai Porra:\n", style:TextStyle(fontSize: 40),
                  children:<TextSpan>[
                    TextSpan(text: 'A = '),
                    TextSpan(text: '$numA', style: TextStyle(color: getColor(numA))),
                    TextSpan(text: ' B = '),
                    TextSpan(text: '$numB\n', style: TextStyle(color: getColor(numB))),
                    TextSpan(text: ' Soma = '),
                    TextSpan(text: '${numA + numB}', style: TextStyle(color: getColor(numA+numB))),
                  ]
                )),
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment:  MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("A:"),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      backgroundColor: Colors.pink[300],
                      onPressed: () => increment(true) ,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      backgroundColor: Colors.purple[300],
                      onPressed: () => decrement(true),
                      child: Icon(Icons.remove),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("B:"),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      backgroundColor: Colors.pink[300],
                      onPressed: () => increment(false) ,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      backgroundColor: Colors.purple[300],
                      onPressed: () => decrement(false),
                      child: Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    
    
    // return Scaffold(
    //   appBar: AppBar(
    //     centerTitle: true,
    //     backgroundColor: Colors.blue,
    //     title: Text("Contador Flutter Cubos Academy", style: TextStyle(color: Colors.white)),
    //   ),
    //   body: Container(

    //   ),
    // );
  } 

}