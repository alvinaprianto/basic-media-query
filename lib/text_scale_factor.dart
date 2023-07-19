import 'package:flutter/material.dart';

class TextScaleFactor extends StatefulWidget {
  const TextScaleFactor({super.key});

  @override
  State<TextScaleFactor> createState() => _TextScaleFactorState();
}

class _TextScaleFactorState extends State<TextScaleFactor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Scale Factor")),
      body: Center(
        child: Row(
          children: [
            Text(
              "This is your text scale factor : ${MediaQuery.textScaleFactorOf(context)}",
              style: TextStyle(
                  // check if text scale in your phone is bigger than 1, the fontsize text will be 23, if no will be 20
                  fontSize:
                      MediaQuery.textScaleFactorOf(context) > 1 ? 20 : 18),
            ),
          ],
        ),
      ),
    );
  }
}
