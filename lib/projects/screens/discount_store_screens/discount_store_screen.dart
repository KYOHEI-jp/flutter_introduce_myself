import 'package:flutter/material.dart';
import 'package:flutter_introduce_myself/projects/screens/discount_store_screens/discount_store_works_page.dart';

class DiscountStoreScreen extends StatefulWidget {
  const DiscountStoreScreen({Key? key}) : super(key: key);

  @override
  _DiscountStoreScreenState createState() => _DiscountStoreScreenState();
}

class Works {
  final String workName;
  final String content;
  final String learned;

  Works(this.workName, this.content, this.learned);
}

class _DiscountStoreScreenState extends State<DiscountStoreScreen> {
  List<Works> workList = [
    Works("EC連携", "WebのECサイトと端末の会員が別個の登録となっていたので、それぞれを連携させる処理を書く。","複数のAPI周りの処理、ECメンバーかどうかで遷移させる画面を変更させる、端末に保存したidや性別、生年月日などの暗号化など。また新旧サーバーが併存する期間があったため、それぞれのケアも行った。"),
    Works("EC導線追加", "hoge", ""),
    Works(
        "チェックイン機能休止(~12/15)",
        "9月に配布してから2022/12/15までの間、チェックイン画面を開くと「チェックイン機能が休止」する旨のダイアログを出す。\n端末の日付を見て、ダイアログ表示から7日後に再度表示する。",
        "Calendarクラスと日付の比較"),
    Works(
        "チェックイン機能休止(12/16~)",
        "9月に配布してから2022/12/15までの間、チェックイン画面を開くと「チェックイン機能が休止」する旨のダイアログを出す。\n端末の日付を見て、ダイアログ表示から7日後に再度表示する。",
        "特定の日付を指定して、今日がその日付を過ぎたかどうか"),
    Works(
        "メンテナンス画面作成",
        "APIからstatus codeで500を受け取った時にメンテナンス中です、と表示されている画面に遷移させる。いつまでメンテナンスかはAPIで受け取り、それをアプリで表示する。",
        "APIの操作 / メンテナンス画面の処理"),
    Works("初回おまとめクーポン", "hoge", "")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("業務ディスカウントストアアプリ"),
        centerTitle: true,
        backgroundColor: Colors.blue,
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

