import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_introduce_myself/projects/screens/drug_store_screens/drug_store_screen.dart';

const colorizeColors = [
  Colors.pinkAccent,
  Colors.blue,
  Colors.lightGreen,
  Colors.orangeAccent,
  Colors.deepOrangeAccent
];

const colorizeTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Horizon',
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Introduce'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Image.asset(
              'assets/IMG_9447.jpg',
              height: 150,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Kyohei Watanabe",
            style: TextStyle(fontSize: 40.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "これまでAndroidエンジニアとして働いてきたので、Flutterを使いながら棚卸しをしていきます。\n 詳しくは左のドロワーメニューからどうぞ！",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ],
      ),
    );
  }

  buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText("仕事で携わったAndroidアプリ",
                    textStyle: colorizeTextStyle, colors: colorizeColors)
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.pinkAccent),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.local_hospital_rounded,
                color: Colors.pinkAccent,
              ),
              title: const Text("ドラッグストアアプリ"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrugStoreScreen(),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.local_grocery_store,
                color: Colors.blue,
              ),
              title: const Text("業務ディスカウントストアアプリ"),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.lightGreen))),
            child: ListTile(
              leading: Icon(
                Icons.park,
                color: Colors.lightGreen,
              ),
              title: const Text("イベントスペース系アプリ"),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.orangeAccent),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.storefront_sharp,
                color: Colors.orangeAccent,
              ),
              title: const Text("スーパーマーケットアプリ"),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.deepOrangeAccent),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.perm_identity_outlined,
                color: Colors.deepOrangeAccent,
              ),
              title: const Text("整体アプリ"),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "自分で作ったFlutterアプリ",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black38),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.today_outlined,
              ),
              title: const Text("TODOアプリ"),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black38),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.perm_identity_outlined,
                color: Colors.deepOrangeAccent,
              ),
              title: const Text("整体アプリ"),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
