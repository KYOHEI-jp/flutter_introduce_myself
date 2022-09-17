import 'package:flutter/material.dart';

import 'event_space_screen.dart';

class WorksPage extends StatelessWidget {
  final Works works;

  const WorksPage({Key? key, required this.works}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(works.workName),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreen),
              ),
              child: Text(
                "具体的な内容",
                style: TextStyle(fontSize: 20.0),
              ),
              padding: EdgeInsets.all(8.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Text(
                works.content,
                style: TextStyle(fontSize: 20.0),
              ),
              padding: EdgeInsets.all(15.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration:
              BoxDecoration(border: Border.all(color: Colors.lightGreen)),
              child: Text(
                "学んだ事",
                style: TextStyle(fontSize: 20.0),
              ),
              padding: EdgeInsets.all(8.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              child: Text(
                works.learned,
                style: TextStyle(fontSize: 20.0),
              ),
              padding: EdgeInsets.all(15.0),
            ),
          ],
        ),
      ),
    );
  }
}