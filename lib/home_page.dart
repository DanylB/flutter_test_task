import 'package:flutter/material.dart';
import 'package:flutter_test_task/color_generator.dart';
import 'package:flutter_test_task/constants.dart';
import 'package:provider/provider.dart';

/// main application screen
class HomePage extends StatefulWidget {
  /// class constructor
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void setNewBackgroundColor(ColorGenerator provider) {
    setState(() {
      provider.colorGenerator();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorGenerator>(context, listen: false);

    return SafeArea(
      child: GestureDetector(
        onTap: () => setNewBackgroundColor(provider),
        child: Scaffold(
          backgroundColor: provider.randomColor,
          appBar: AppBar(
            title: const Text(kTitleText),
            backgroundColor: Colors.black,
            centerTitle: true,
            elevation: 0,
          ),
          body: const Center(
            child: Text(
              kBodyCenterText,
              style: kBodyCenterTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
