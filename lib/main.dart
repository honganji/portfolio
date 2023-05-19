import 'package:flutter/material.dart';
import 'package:portfolio/db.dart';
import 'package:portfolio/widgets/body/body.dart';
import 'package:portfolio/widgets/header/header.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yuji Toshihiro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PageScrollModel>(
      create: (BuildContext context) => PageScrollModel(),
      child: Scaffold(
        body: SelectionArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Header(),
                Expanded(
                  child: Body(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
