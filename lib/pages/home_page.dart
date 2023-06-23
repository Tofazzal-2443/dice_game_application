import 'package:dice_game/pages/game_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Game"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                Text(
                  "Rules",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You roll two dice. "
                  "Each die has six faces, which contain one, "
                  "two, three, four, five and six spots, "
                  "respectively. After the dice have come "
                  "to rest, the sum of the spots onthe two "
                  "upward faces is calculated.",
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "-If the sum is 7 or 11 on the first throw, you win. ",
                ),
                Text(
                  "-If the sum is 2, 3 or 12 on the first throw, you lose",
                ),
                Text(
                  "-If the sum is 4, 5, 6, 8, 9 or 10 on the first throw,"
                  "that sum becomes your “point.”",
                ),
                Text(
                  "-To win,you must continue rolling the dice until you"
                  "“make your point”",
                ),
                Text(
                  "-You lose by rolling a 7 before making your point.",
                ),
              ],
            ),
          ),
          Image.asset("assets/images/fire_dice.png",height: 200, width: 200,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, GamePage.routeName);
            },
            child: const Text("PLAY NOW"),
          ),
        ],
      ),
    );
  }
}
