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
    return Scaffold();
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(margin:EdgeInsets.symmetric(horizontal: 36.0),
            child: Column(
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
                  child: SizedBox(
                    width: 290.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 125.0,
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
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 125.0,
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
                            fontWeight: FontWeight.w500,
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
                            fontWeight: FontWeight.w500,
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
                            fontWeight: FontWeight.w500,
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
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(66, 166, 234, 1),
                      textStyle: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400),
                      fixedSize: const Size(130.0, 45.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ), // sign up
                Row(mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Have an account?',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ) // switch to sign in
              ],
            ),
          ),
        ),
      ),
    );
  }
}





class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(margin: const EdgeInsets.symmetric(horizontal: 36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: SizedBox(
                    height: 139.0,
                    child: Text(
                      'Boayant',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color.fromRGBO(66, 166, 234, 1),
                      ),
                    ),
                  ),
                ), // Company logo
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Color.fromRGBO(66, 166, 234, 1),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250.0,
                        height: 50.0,
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
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Color.fromRGBO(66, 166, 234, 1),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250.0,
                        height: 50.0,
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
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign In',
                    style:
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(66, 166, 234, 1),
                    textStyle: const TextStyle(fontSize: 18.0),
                    fixedSize: const Size(130.0, 45.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ), // sign in
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    SizedBox(
                      height: 93.0,
                      width: 115.0,
                      child: Divider(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 93.0,
                      width: 115.0,
                      child: Divider(
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                    ),
                  ],
                ), // or
                Padding(
                  padding: const EdgeInsets.only(bottom: 19.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In with Google',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(95, 95, 95, 1),
                      textStyle: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400),
                      fixedSize: const Size(295.0, 45.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ), // sign in with google
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New to Boayant?',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ) // switch to sign in
              ],
            ),
          ),
        ),
      ),
    ); //log in UI
  }
}
