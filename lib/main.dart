import 'package:flutter/material.dart';
import 'package:my_sport/src/auth/sign_in_screen.dart';
import 'package:my_sport/src/config/custom_colors.dart';

void main() {
  runApp(const MySport());
}

class MySport extends StatelessWidget {
  const MySport({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomColors.customSwatchColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
