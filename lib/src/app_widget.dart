
import 'package:flutter/material.dart';
import 'package:get_you_monet/src/login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get Yuo Money Master Class',
      theme: ThemeData(
    
        primarySwatch: Colors.purple,
      ),
      home: const LoginPage(),
    );
  }
}