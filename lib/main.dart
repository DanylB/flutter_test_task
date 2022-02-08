import 'package:flutter/material.dart';
import 'package:flutter_test_task/color_generator.dart';
import 'package:flutter_test_task/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

/// Main class/widget of project
class MyApp extends StatelessWidget {
  /// class constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorGenerator(),
      child: const MaterialApp(
        /// don't display "debug" label
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
