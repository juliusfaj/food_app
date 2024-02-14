import 'package:flutter/material.dart';
import 'package:practice_app/screens/banner.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
appBar: AppBar(
  centerTitle: true,
  leading: IconButton(
    onPressed: () {},
    icon: const Icon(Icons.list),
    iconSize: 30.0,
  ),
  title: Text(
    "11tal, intertap road ^",
    style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Colors.red.shade500),
  ),
  actions: [
    IconButton(
        onPressed: () {},
        icon: const Icon(Icons.settings),
        iconSize: 30.0)
  ],
),
        body: AppBanner()
      ),
    );
  }
}
