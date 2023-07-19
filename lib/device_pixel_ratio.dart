import 'package:flutter/material.dart';

class DevicePixelRatio extends StatefulWidget {
  const DevicePixelRatio({super.key});

  @override
  State<DevicePixelRatio> createState() => _DevicePixelRatioState();
}

class _DevicePixelRatioState extends State<DevicePixelRatio> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double devicePixelRatio = mediaQuery.devicePixelRatio;

    // Define font sizes based on the device pixel ratio
    double titleFontSize = 20.0 * devicePixelRatio;
    double subtitleFontSize = 16.0 * devicePixelRatio;

    return Scaffold(
      appBar: AppBar(
        title: Text('Device Pixel Ratio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Title Text',
              style: TextStyle(
                  fontSize: titleFontSize, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Subtitle Text',
              style: TextStyle(fontSize: subtitleFontSize),
            ),
            SizedBox(height: 10),
            Text(
              "Device pixel ratio : ${devicePixelRatio.toString()}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
