import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Card(child: ListView(children: const [
          ListTile(title: Text("Full Name"),subtitle: Text("xxxxx"),),
          ListTile(title: Text("Email"),subtitle: Text("xxxxx"),),
          ListTile(title: Text("Gender"),subtitle: Text("xxxxx"),),
        ],)),
      ),
    );
  }
}