import 'package:flutter/material.dart';
import 'package:flutter_test_task/color_generator.dart';
import 'package:flutter_test_task/constants.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

/// main application screen
class HomePage extends StatelessWidget {
  /// class constructor
  const HomePage({Key? key}) : super(key: key);

  /// update background color
  void setNewBackgroundColor(ColorGenerator colorGeneratorProvider) =>
      colorGeneratorProvider.colorGenerator();

  /// save HEX color to Clipboard
  void getColor(ColorGenerator colorGeneratorProvider) => Clipboard.setData(
        ClipboardData(text: colorGeneratorProvider.getHexNameColor()),
      );

  /// show SnackBar 'Copied'
  void showShackBar(BuildContext context) {
    const snackBar = SnackBar(
      content: Text(kShackBarText),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    /// provider ColorGenerator Class
    final colorGeneratorProvider =
        Provider.of<ColorGenerator>(context, listen: true);

    return SafeArea(
      child: GestureDetector(
        onTap: () => setNewBackgroundColor(colorGeneratorProvider),
        onLongPress: () {
          getColor(colorGeneratorProvider);
          showShackBar(context);
        },
        child: Scaffold(
          backgroundColor: colorGeneratorProvider.randomColor,
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
