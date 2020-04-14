import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imageApp = AssetImage("images/padrao.png");
  var _resultado = "";
  var _choiceP1;
  var _absor = true;

  void howWin(int player1, int player2) {
    print('P1 $player1 - P2 $player2');
    if (player1 == player2) {
      print("Empatou");
      setState(() {
        this._resultado = "Empatou";
      });

      // pedra 0 papel  1 tesoura 2
      // P1 ganha
    } else if ((player1 == 0 && player2 == 2) ||
        (player1 == 1 && player2 == 0) ||
        (player1 == 2 && player2 == 1)) {
      setState(() {
        this._resultado = "P1 WINS";
      });
      // P2 ganha
    } else if ((player2 == 0 && player1 == 2) ||
        (player2 == 1 && player1 == 0) ||
        (player2 == 2 && player1 == 1)) {
      // print('*P1 $player1 - P2 $player2');
      setState(() {
        this._resultado = "P2 WINS";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("JokenPo", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do Player 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent),
              ),
            ),
            Row(
              //Player 1
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _choiceP1 = 0;
                    print("Player 1 escolheu");
                  },
                  child: Image.asset("images/pedra.png", height: 95),
                ),
                GestureDetector(
                  onTap: () {
                    _choiceP1 = 1;
                    print("Player 1 escolheu");
                  },
                  child: Image.asset("images/papel.png", height: 95),
                ),
                GestureDetector(
                  onTap: () {
                    _choiceP1 = 2;
                    print("Player 1 escolheu");
                  },
                  child: Image.asset("images/tesoura.png", height: 95),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do Player 2",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    return howWin(_choiceP1, 0);
                  },
                  child: Image.asset("images/pedra.png", height: 95),
                ),
                GestureDetector(
                  onTap: () {
                    // print('P1 $_choiceP2 - P2 1');
                    return howWin(_choiceP1, 1);
                  },
                  child: Image.asset("images/papel.png", height: 95),
                ),
                GestureDetector(
                  onTap: () {
                    return howWin(_choiceP1, 2);
                  },
                  child: Image.asset("images/tesoura.png", height: 95),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                _resultado,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent),
              ),
            ),
          ],
        ));
  }
}
