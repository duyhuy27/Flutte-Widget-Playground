import 'package:basic_widget_30_1/animations/animation_builder.dart';
import 'package:basic_widget_30_1/firebase_contain/day22_auth.dart';
import 'package:basic_widget_30_1/firebase_contain/day23_database.dart';
import 'package:basic_widget_30_1/widgets/alertDialog.dart';
import 'package:basic_widget_30_1/widgets/animatedText.dart';
import 'package:basic_widget_30_1/widgets/animated_bottom_nv.dart';
import 'package:basic_widget_30_1/widgets/bottomSheetDialog.dart';
import 'package:basic_widget_30_1/widgets/bottomnav.dart';
import 'package:basic_widget_30_1/widgets/button.dart';
import 'package:basic_widget_30_1/widgets/custom_list_grid.dart';
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
import 'package:basic_widget_30_1/widgets/splash.dart';
import 'package:basic_widget_30_1/widgets/stack.dart';
import 'package:basic_widget_30_1/widgets/tabbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:basic_widget_30_1/animations/animated_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure Flutter binding is initialized

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return DatabaseOptions();
              } else {
                return Day22_Auth();
              }
            }));
  }
}
