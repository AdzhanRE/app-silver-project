import 'package:flutter/material.dart';
import 'package:test_project/constants.dart';
import 'package:test_project/components/rounded_button.dart';
import 'package:test_project/components/const_text.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            KText(
                title: 'RURAL MOBILE ENTREPRENUER'
            ),
            KText(
                title: '(RME @ KPLB)'
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: kInputDecoration,
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: kInputDecoration.copyWith(
                hintText: 'Kata Laluan',
                prefixIcon: Icon(Icons.lock_outline)
              ),
            ),
            RoundedButton(
                title: 'Log Masuk',
                colour: Colors.blue,
            )
          ],
        ),
      ),
    );
  }

}
