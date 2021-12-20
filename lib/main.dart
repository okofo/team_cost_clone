import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_cost_clone/provider/spending_provider.dart';
import 'package:team_cost_clone/ui/home_page.dart';
import 'package:team_cost_clone/ui/score_screen.dart';

import 'provider/perk_provider.dart';
import 'provider/task_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PerkProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => TaskProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SpendingProvider(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Metropolis',
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const MyHomePage(),
            '/scorePage': (context) => const ScorePage(),
          }),
    );
  }
}
