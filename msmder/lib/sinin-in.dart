// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:msander/input-boxs.dart';
import 'extantions_func.dart';

class SigminIng extends StatefulWidget {
  @override
  State<SigminIng> createState() => _SigminIngState();
}

class _SigminIngState extends State<SigminIng> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var srcwidth = MediaQuery.of(context).size.width;
    var srchi = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40.0, top: 40.0),
                        child: Text(
                          "MSander",
                          style: TextStyle(
                              fontFamily: 'Cardo',
                              fontSize: 40,
                              color: Color(0xff0c2251),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40.0, top: 5.0),
                        child: Text(
                          'Sign In App',
                          style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 17,
                              color: Colors.grey,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyCustomInputBox(label: 'Name', inputHint: 'Roberto'),
                    const SizedBox(
                      height: 10,
                    ),
                    MyCustomInputBox(
                        label: 'Email', inputHint: 'example@example.com'),
                    SizedBox(
                      height: 10,
                    ),
                    MyCustomInputBox(
                      label: 'Password',
                      inputHint: '8+ Characters,1 Capital letter',
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'OR',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 109, 123, 146)
                              .withOpacity(0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutSignButtons(
                              chForMD: 'G',
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            OutSignButtons(
                              chForMD: 'F',
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Creating an account means you're okay with\nour Terms of Service and Privacy Policy",
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 15.5,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8f9db5).withOpacity(0.45),
                      ),
                      //
                    ),
                    Container(
                      height: 65,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: srcwidth * 0.85,
                      decoration: BoxDecoration(
                          color: Color(0xff0962ff),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Create an Account',
                          style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff8f9db5).withOpacity(0.45),
                            ),
                          ),
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              fontFamily: 'Product Sans',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff90b7ff),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
