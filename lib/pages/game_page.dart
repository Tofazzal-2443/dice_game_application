import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);
  static const String routeName = "/gamePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Game'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          buildPointCount(),
          SizedBox(
            height: 30,
          ),
          buildGameBody(),
        ],
      ),
    );
  }

  Padding buildPointCount() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                "Lose: ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Lose: ',
                style: TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }

  Column buildGameBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "1",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 50,
        ),
          Text(
            'The sum of dice are: ',
            style: TextStyle(fontSize: 20),
          ),
        const SizedBox(
          height: 10,
        ),
          Text(
            'Your point is: ',
            style: TextStyle(fontSize: 20),
          ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "",
              width: 150,
              height: 150,
            ),
            Image.asset(
              "",
              width: 150,
              height: 150,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {},
          child: const Text(
            'Restart Game',
            style: TextStyle(fontSize: 20),
          ),
        ),

        ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Roll the Dices',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
