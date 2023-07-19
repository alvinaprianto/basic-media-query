import 'package:flutter/material.dart';

class ScreenSize extends StatelessWidget {
  const ScreenSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // if you want see actual screen size you can delete this appBar property
        appBar: AppBar(title: Text("Screen Size")),
        body: Container(
          color: Colors.blue,
          // get your phone screen size for height of container
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Height of Screen : ${MediaQuery.sizeOf(context).height}",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Width of Screen : ${MediaQuery.sizeOf(context).width}",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
