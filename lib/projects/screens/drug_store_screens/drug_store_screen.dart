import 'package:flutter/material.dart';
import 'package:flutter_introduce_myself/projects/screens/drug_store_screens/drug_store_works_page.dart';

class DrugStoreScreen extends StatefulWidget {
  const DrugStoreScreen({Key? key}) : super(key: key);

  @override
  _DrugStoreScreenState createState() => _DrugStoreScreenState();
}

class Works {
  final String workName;
  final String content;
  final String learned;

  Works(this.workName, this.content, this.learned);
}

class _DrugStoreScreenState extends State<DrugStoreScreen> {
  List<Works> workList = [
    Works("ポイント相互付与", "A薬局とB薬局のそれぞれで利用出来るよう、スワイプでクーポン使用画面を切り替える",
        "クーポン画面のスワイプ\nAPIからクーポンコードを取得しQRコードを生成する\nQRコードの読み取りをそれぞれ行えるようにする"),
    Works("ルーレット機能", "hoge", ""),
    Works(
        "キャラクターキャンペーン",
        "Splash画面でAPIを叩きjsonを受け取り、日付を見てキャンペーン期間以内であれば各画面でキャンペーン時のjpeg or apngに切り替える。",
        ""),
    Works(
        "キャラクターキャンペーンモーダル",
        "Splash画面でAPIを叩きオブジェクトを受け取り、オブジェクトの中身を見て、「以降は表示しない」チェックボックス付きのダイアログにタイトル、メッセージ、画像を表示する。もし画像がない場合はダイアログのサイズを変える。",
        "ダイアログのサイズの変更方法\nGsonを使い、受け取ったオブジェクトの中身を見て判断する方法"),
    Works("初回おまとめクーポン", "hoge", "")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("薬局アプリ"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
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
