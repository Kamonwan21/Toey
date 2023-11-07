import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/menu.dart';
import 'package:flutter_application_1/models/config.dart';
import 'package:flutter_application_1/models/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Users CRUD',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
      },
    );
  }
}

//Home
class Home extends StatefulWidget {
  static const routeName = '/';
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

Widget mainBody = Container();

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Users user = Configure.login;
    if (user.id != null) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const Menu(),
      body: mainBody,
    );
  }
}

