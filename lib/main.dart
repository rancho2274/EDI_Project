import 'package:csi_assign5/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:csi_assign5/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:csi_assign5/screens/models/user.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBb0DvvuFGdzgSskoTorfNMHGMVHGXKkGY",
          appId: "1:232405589211:android:9f921e5a35ed66ffa280fe",
          messagingSenderId: "232405589211",
          projectId: "asign5-22509"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser?>.value(
      catchError: (_,__) {},
      initialData: null,
      value: Authservice().user,
      child: MaterialApp(
       home: wrapper(),
      ),
    );
  }
}

