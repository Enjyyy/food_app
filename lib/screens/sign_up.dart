import 'package:flutter/material.dart';
import 'package:food_app/screens/sign_in.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const id = 'SignUpScreen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Opacity(
          opacity: 0.9,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 40, left: 40),
              child: Text(
                'Welcome!',
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    color: Colors.deepPurple[700]),
              ),
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xffffffe0),
                        borderRadius: BorderRadius.circular(11)),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: 'username',
                      ),
                    )),
                SizedBox(
                  height: 11,
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xffffffe0),
                        borderRadius: BorderRadius.circular(11)),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: 'email',
                      ),
                    )),
                SizedBox(
                  height: 11,
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xffffffe0),
                        borderRadius: BorderRadius.circular(11)),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: 'password',
                      ),
                    )),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xfffffff0),
                    borderRadius: BorderRadius.circular(11)),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.deepPurple[700]),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignInScreen.id);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xfffffff0),
                    borderRadius: BorderRadius.circular(11)),
                child: Center(
                  child: Text(
                    'Already have an account? Sign In!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.deepPurple[700]),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
