import 'package:apart_rent/navigator/google_navigator.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:apart_rent/routes.dart';
// import 'package:apart_rent/screens/about/about_screen.dart';
// import 'package:apart_rent/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/google_sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const GoogleNavigator(),
        ),
      );
}
