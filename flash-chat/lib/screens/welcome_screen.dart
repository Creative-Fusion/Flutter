import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {

  static const String id= 'welcome_screen'; ///'static' allows the variable to be accessed widely throughout the project code without having to create an object to the class.

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(
        seconds: 3,
      ),
      vsync: this,  ///ticker
      upperBound: 1.0,
    );
//    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    ///For curves, upperbound must be <=1
    animation =ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
    controller.forward();
//    animation.addStatusListener((status) {
//      if(status == AnimationStatus.completed) {
//        controller.reverse(from: 1.0);
//      } else if(status== AnimationStatus.dismissed){
//        controller.forward();
//      }
//    });
    ///Here, even if we close the screen, that controller still lives on and it's costing resources. Therefore, we have to dispose our controller.
    controller.addListener(() {
      setState(() { });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(color:Colors.lightBlueAccent,title: 'Log In',onPressed: () {
              //Go to login screen.
              Navigator.pushNamed(context, LoginScreen.id);
            }),
            RoundedButton(color:Colors.blueAccent,title: 'Register',onPressed: () {
              //Go to login screen.
              Navigator.pushNamed(context, RegistrationScreen.id);
            }),
          ],
        ),
      ),
    );
  }
}


//login: Colors.lightBlueAccent
//register: Colors.blueAccent