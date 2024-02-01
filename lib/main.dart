import 'package:basic_widget_30_1/widgets/alertDialog.dart';
import 'package:basic_widget_30_1/widgets/animatedText.dart';
import 'package:basic_widget_30_1/widgets/animated_bottom_nv.dart';
import 'package:basic_widget_30_1/widgets/bottomSheetDialog.dart';
import 'package:basic_widget_30_1/widgets/bottomnav.dart';
import 'package:basic_widget_30_1/widgets/button.dart';
import 'package:basic_widget_30_1/widgets/day19ui.dart';
import 'package:basic_widget_30_1/widgets/day20.dart';
import 'package:basic_widget_30_1/widgets/day21ui.dart';
import 'package:basic_widget_30_1/widgets/dismissibleWidget.dart';
import 'package:basic_widget_30_1/widgets/drawerWidget.dart';
import 'package:basic_widget_30_1/widgets/dropdown_list.dart';
import 'package:basic_widget_30_1/widgets/form.dart';
import 'package:basic_widget_30_1/widgets/geolocator.dart';
import 'package:basic_widget_30_1/widgets/imagepicker.dart';
import 'package:basic_widget_30_1/widgets/images.dart';
import 'package:basic_widget_30_1/widgets/list_grid.dart';
import 'package:basic_widget_30_1/widgets/snackbarWidget.dart';
import 'package:basic_widget_30_1/widgets/stack.dart';
import 'package:basic_widget_30_1/widgets/tabbar.dart';
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
          brightness: Brightness.light, primaryColor: Colors.blueAccent),
      home: const Day21UI(),
    );
  }
}
