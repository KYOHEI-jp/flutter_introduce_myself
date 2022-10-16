import 'package:flutter/material.dart';

import 'delica_works_page.dart';

class DelicaScreen extends StatefulWidget {
  const DelicaScreen({Key? key}) : super(key: key);

  @override
  _DelicaScreenState createState() => _DelicaScreenState();
}

class Works {
  final String workName;
  final String content;
  final String learned;

  Works(this.workName, this.content, this.learned);
}

class _DelicaScreenState extends State<DelicaScreen> {
  List<Works> workList = [
    Works("輝度変更削除", "バーコードが常時表示されるクーポンが一覧に表示されると、画面の輝度がMAXになる仕様だったが、画面の輝度MAXになる処理を削除",
        "画面の輝度変更の理解が深まった"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("デリカアプリ"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: workList.length,
          itemBuilder: (context, index) {
            final works = workList[index];
            return Card(
              child: ListTile(
                title: Text(
                  works.workName,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WorksPage(works: works),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
