import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildDrawer();
  }
}

Drawer buildDrawer() {
  return Drawer(
    child: ListView(
      children: [
        Container(
          padding: EdgeInsets.all(15.0),
          child: const Text(
            "今まで携わったアプリ集",
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
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
              onTap: () {},
            )),
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
      ],
    ),
  );
}