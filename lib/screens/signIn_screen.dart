import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 101.0,
                      child: Text(
                        'Boayant',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Color.fromRGBO(66, 166, 234, 1),
                        ),
                      ),
                    ), // company logo

                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                color: Color.fromRGBO(66, 166, 234, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ),
                          SizedBox(
                            width: 290.0,
                            height: 45.0,
                            child: Material(
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      ),
                    ), // Email
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                color: Color.fromRGBO(66, 166, 234, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 290.0,
                            height: 45.0,
                            child: Material(
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                                ),
                                obscureText: true,
                              ),
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      ),
                    ), // Password
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: ElevatedButton(
                        onPressed: () {
                          print('accept input');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(66, 166, 234, 1),
                          textStyle: TextStyle(fontSize: 18.0),
                          fixedSize: Size(130.0, 45.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ), //


                    Row(
                      children: [
                        Expanded(
                          child:
                          const Divider(
                            color: Colors.black,
                            height: 25,
                            thickness: 2,
                            indent: 5,
                            endIndent: 5,
                          ),),
                        Expanded(child: const Text("Or")),
                        Expanded(
                          child:
                          const Divider(
                            color: Colors.black,
                            height: 25,
                            thickness: 2,
                            indent: 5,
                            endIndent: 5,
                          ),),
                      ],
                    ),// si

                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            print('signIn With Google');
                          },
                          child: const Text(
                            'SignIn With Google',
                            style: TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(95, 95, 95, 1),
                            textStyle: TextStyle(fontSize: 18.0),
                            fixedSize: Size(130.0, 45.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ), //
// gn up
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 12.0),
                        ),
                        TextButton(
                          onPressed: () {
                            print('move to sign up page');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ) // switch to sign in
                  ],
                ),
              ),
            )));
  }
}
