import 'package:calculator_app/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CalculatorProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator App',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const CalculatorScreeen(),
      ),
    );
  }
}
