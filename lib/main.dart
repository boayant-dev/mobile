import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boayant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Boayant'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 101.0,
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
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: Text(
                              'First Name',
                              style: TextStyle(
                                color: Color.fromRGBO(66, 166, 234, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox( width: 125.0,
                            height: 45.0,
                            child: Material(
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                ),
                                keyboardType: TextInputType.name,
                              ),
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 15.0),
                            child: Text(
                              'Last Name',
                              style: TextStyle(
                                color: Color.fromRGBO(66, 166, 234, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 125.0,
                            height: 45.0,
                            child: Material(
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                ),
                                keyboardType: TextInputType.name,
                              ),
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), // Name
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Text(
                          'Phone',
                          style: TextStyle(
                            color: Color.fromRGBO(66, 166, 234, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 290.0,
                        height: 45.0,
                        child: Material(
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                ), // Phone
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
                      SizedBox(width: 290.0,
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
                      SizedBox(width: 290.0,
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
                ), // sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Have an account?',
                    style: TextStyle(fontSize: 12.0),),
                    TextButton(
                      onPressed: () {
                        print('move to sign in page');
                      },
                      child: Text('Sign In',
                      style: TextStyle(fontSize: 12.0),),
                    )
                  ],
                )// switch to sign in
              ],
            ),
          ),
        ),
      ),
    );
  }
}
