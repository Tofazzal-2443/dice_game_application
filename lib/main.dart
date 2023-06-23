import 'package:dice_game/pages/game_page.dart';
import 'package:dice_game/pages/home_page.dart';
import 'package:dice_game/providers/game_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => GameProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context)=> HomePage(),
        GamePage.routeName: (context) => GamePage(),
      },
    );
  }
}
