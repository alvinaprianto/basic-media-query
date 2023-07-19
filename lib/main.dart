import 'package:basic_media_query/device_pixel_ratio.dart';
import 'package:basic_media_query/padding_insets.dart';
import 'package:basic_media_query/platform_brightness.dart';
import 'package:basic_media_query/screen_orientation.dart';
import 'package:basic_media_query/screen_size.dart';
import 'package:basic_media_query/text_scale_factor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guidance Media Query',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Basic Guidance Media Query'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ScreenSize()));
                },
                child: Text("Screen Size")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ScreenOrientation()));
                },
                child: Text("Screen Orientation")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => DevicePixelRatio()));
                },
                child: Text("Device Pixel Ratio")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => PaddingInsets()));
                },
                child: Text("Padding Insets")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => TextScaleFactor()));
                },
                child: Text("Text Scale Factor")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => PlatformBrightness()));
                },
                child: Text("Platform Brightness")),
          ],
        ),
      ),
    );
  }
}
