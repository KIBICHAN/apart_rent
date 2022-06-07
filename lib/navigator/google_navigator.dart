import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:apart_rent/routes.dart';
import 'package:apart_rent/screens/about/about_screen.dart';

class GoogleNavigator extends StatelessWidget {
  const GoogleNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }/*else if(snapshot.hasData){
              return MaterialApp(
                initialRoute: AboutScreen.routeName,
                routes: routes,);
            }*/else if(snapshot.hasError){
              return const Center(child: Text('Something Went Wrong!'));
            }else{
              return MaterialApp(
                initialRoute: AboutScreen.routeName,
                routes: routes,);
            }
          },
        ),
      );
}