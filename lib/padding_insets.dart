import 'package:flutter/material.dart';

class PaddingInsets extends StatefulWidget {
  const PaddingInsets({super.key});
  @override
  _PaddingInsetsState createState() => _PaddingInsetsState();
}

class _PaddingInsetsState extends State<PaddingInsets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Inset'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Top View Inset: ${MediaQuery.viewInsetsOf(context).top}'),
            Text(
                'Bottom View Inset: ${MediaQuery.viewInsetsOf(context).bottom}'),
            Text('Left View Inset: ${MediaQuery.viewInsetsOf(context).left}'),
            Text('Right View Inset: ${MediaQuery.viewInsetsOf(context).right}'),
            Text('Top Padding: ${MediaQuery.paddingOf(context).top}'),
            Text('Bottom Padding: ${MediaQuery.paddingOf(context).bottom}'),
            Text('Left Padding: ${MediaQuery.paddingOf(context).left}'),
            Text('Right Padding: ${MediaQuery.paddingOf(context).right}'),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: TextEditingController(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
