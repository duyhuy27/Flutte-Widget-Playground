import 'package:basic_widget_30_1/widgets/button.dart';
import 'package:basic_widget_30_1/widgets/dismissibleWidget.dart';
import 'package:basic_widget_30_1/widgets/drawerWidget.dart';
import 'package:basic_widget_30_1/widgets/images.dart';
import 'package:basic_widget_30_1/widgets/list_grid.dart';
import 'package:basic_widget_30_1/widgets/snackbarWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.blueAccent),
      home: const ImageWidget(),
    );
  }
}
