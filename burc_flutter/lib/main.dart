/*import 'package:burc_flutter/burc_listesi.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: BurcListesi(),
    );
  }
}
*/
import 'package:burc_flutter/burc_listesi.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( primarySwatch: Colors.grey),
      home: BurcListesi(),
    );
  }


}
