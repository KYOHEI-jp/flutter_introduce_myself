import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_introduce_myself/projects/screens/delica_screens/delica_screen.dart';
import 'package:flutter_introduce_myself/projects/screens/discount_store_screens/discount_store_screen.dart';
import 'package:flutter_introduce_myself/projects/screens/drug_store_screens/drug_store_screen.dart';
import 'package:flutter_introduce_myself/projects/screens/event_space_screens/event_space_screen.dart';

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
            child: const Text(
              "これまでAndroidエンジニアとして働いてきたので、Flutterを使いながら棚卸しをしていきます。\n 詳しくは左のドロワーメニューからどうぞ！",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://play-lh.googleusercontent.com/PCpXdqvUWfCW1mXhH1Y_98yBpgsWxuTSTofy3NGMo9yBTATDyzVkqU580bfSln50bFU',
                  height: 35.0,
                  width: 30.0,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Text("KYOHEI-jp"),
              ],
            ),
          )
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
                    builder: (context) => const DrugStoreScreen(),
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
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DiscountStoreScreen(),
                  ),
                );
              },
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
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EventSpaceScreen()),
                );
              },
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
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black38))),
            child: ListTile(
              leading: Icon(
                Icons.cake,
                color: Colors.black38,
              ),
              title: const Text("デリカ系アプリ"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DelicaScreen()),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.deepPurpleAccent),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.handyman,
                color: Colors.deepPurpleAccent,
              ),
              title: const Text("使用した事のあるライブラリなど"),
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
              trailing: const Text("BLoC"),
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
                Icons.umbrella_sharp,
                color: Colors.deepOrangeAccent,
              ),
              title: const Text("天気アプリ"),
              onTap: () {},
              trailing: Text("Provider"),
            ),
          ),
        ],
      ),
    );
  }
}
