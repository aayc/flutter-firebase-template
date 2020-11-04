import 'package:app/components/beaut_input_text_field.dart';
import 'package:app/screens/flow_menu_page.dart';
import 'package:app/services/api.dart';
import 'package:app/subcomponents/flat_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../textstyles.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final googleLogin = GoogleSignIn();

  void signInWithService(serviceName) async {
    if (serviceName == "google") {
      signInWithGoogle().then((result) {
        if (result != null) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuFlowPage()));
        }
      });
    } else if (serviceName == "facebook") {
      // TODO facebook sign in
    } else if (serviceName == "apple") {
      // TODO apple sign in
    }
    // TODO will need a registration page
    // TODO will need to force registration on google and other sign in methods to populate the payment table
    // TODO will need to build menu flow based on some const dart file (maybe a data folder?)
    // TODO will need a main screen page with a list view of services pulling from service table
  }

  void signInWithEmail() async {
    print('Not implemented');
    // TODO will need a registration page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView(padding: EdgeInsets.symmetric(horizontal: 80), children: <Widget>[
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 220, height: 220, child: Image.asset('assets/img/sample-logo.png')),
          ],
        ),
        SignInButton(
          Buttons.Google,
          onPressed: () => signInWithService('google'),
        ),
        SignInButton(
          Buttons.Facebook,
          onPressed: () => signInWithService('facebook'),
        ),
        SignInButton(
          Buttons.Apple,
          onPressed: () => signInWithService('apple'),
        ),
        const SizedBox(height: 10),
        Align(child: Text('or')),
        const SizedBox(height: 10),
        Container(
            height: 30,
            width: 240,
            child: BeautInputTextField(
              prefixIcon: Icon(Icons.email),
              textStyle: H5,
              hintText: 'Email',
            )),
        const SizedBox(height: 10),
        Container(
            height: 30,
            width: 240,
            child: BeautInputTextField(
              prefixIcon: Icon(Icons.lock),
              textStyle: H5,
              hintText: 'Password',
            )),
        const SizedBox(height: 30),
        OutlinedFlatButton(
          text: 'sign in',
          onPressed: signInWithEmail,
          color: Colors.black,
          textColor: Colors.black,
          borderRadius: 0,
        ),
        const SizedBox(height: 10),
        OutlinedFlatButton(
          text: 'continue as guest',
          onPressed: signInWithEmail,
          color: Colors.black,
          textColor: Colors.black,
          borderRadius: 0,
        )
      ])),
    );
  }
}
