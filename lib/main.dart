import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    DicePage()
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1 ;
  int rightDiceNumber=1;
  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
      title: Text('Dice'),
      backgroundColor: Colors.blueGrey.shade900,
      ),
      body:
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 250,
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child:TextButton(
                      onPressed:(){
                         setState(() {
                          leftDiceNumber=Random().nextInt(6)+1;
                         });
                      },
                      child:
                      Image.asset('images/dice$leftDiceNumber.png',)
                  ),
                ),
                Expanded(
                  child:TextButton(
                    onPressed:(){
                      changeDice();
                    },
                    child:
                    Image.asset('images/dice$rightDiceNumber.png', ),

                  ),
                ),

              ],
            ),
          ),
        )
      ],
      )
        ),

    );

  }
  void changeDice(){
    setState(() {
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
}



