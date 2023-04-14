import 'dart:io';
import 'package:e_commerce_admin/views/screens/main_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: kIsWeb || Platform.isAndroid
          ? FirebaseOptions(
              apiKey: "AIzaSyAXEpFq6x8tT6vStJs498tE6kGfZSydrns",
              appId: "1:920932779651:web:6f69298e48f70ca9fc7db6",
              messagingSenderId: "920932779651",
              projectId: "testinga-ee291",
              storageBucket: "testinga-ee291.appspot.com")
          : null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
