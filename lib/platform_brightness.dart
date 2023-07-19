import 'package:flutter/material.dart';

class PlatformBrightness extends StatefulWidget {
  const PlatformBrightness({super.key});

  @override
  State<PlatformBrightness> createState() => _PlatformBrightnessState();
}

class _PlatformBrightnessState extends State<PlatformBrightness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Platform Brightness")),
      body: Center(
        child: Text(
          "Current mode : ${MediaQuery.platformBrightnessOf(context).name}",
          style: TextStyle(
              // check if contrast or mode of your phone is dark the text color will be green, if light will be red
              color: MediaQuery.platformBrightnessOf(context).name == "dark"
                  ? Colors.green
                  : Colors.red),
        ),
      ),
    );
  }
}
