import 'package:flutter/material.dart';

class ScreenOrientation extends StatefulWidget {
  const ScreenOrientation({super.key});

  @override
  State<ScreenOrientation> createState() => _ScreenOrientationState();
}

class _ScreenOrientationState extends State<ScreenOrientation> {
  Orientation currentOrientation = Orientation.portrait;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Orientation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Orientation: ${MediaQuery.orientationOf(context)}',
            ),
            SizedBox(
              // check if orientation is portrait sized box will has height 300, if landscape 100 to avoid overflow when landscape
              height: MediaQuery.orientationOf(context).name == "portrait"
                  ? 300
                  : 100,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Button"))
          ],
        ),
      ),
    );
  }
}
