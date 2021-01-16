import 'package:flutter/material.dart';
import 'package:yourtea/splash_screen.dart';
import 'package:yourtea/screen/login_signup.dart';
import 'package:provider/provider.dart';
import 'module/authentcation.dart';
import 'package:yourtea/screen/homepage.dart';
import 'package:yourtea/screen/edit_profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Authentication(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Your Tea',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: SplashScreen(),
        routes: {
          SplashScreen.routeName: (ctx)=> SplashScreen(),
          LoginSignup.routeName: (ctx)=> LoginSignup(),
          HomePage.routeName: (ctx)=> HomePage(),
          EditProfilePage.routeName: (ctx)=> EditProfilePage(),
        },
      ),
    );
  }
}
