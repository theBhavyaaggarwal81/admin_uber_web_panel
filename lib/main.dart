import 'package:admin_uber_web_panel/dashboard/side_navigation_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async    // Run : flutter run -d chrome --web-renderer html
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "(API HERE)",
        authDomain: "uber-flutter-clone-usersapp.firebaseapp.com",
        databaseURL: "https://uber-flutter-clone-usersapp-default-rtdb.firebaseio.com",
        projectId: "uber-flutter-clone-usersapp",
        storageBucket: "uber-flutter-clone-usersapp.appspot.com",
        messagingSenderId: "408872853607",
        appId: "1:408872853607:web:42ada35657d1e93d4374c2",
        measurementId: "G-9FQFG2LR6V"
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SideNavigationDrawer(),
    );
  }
}


