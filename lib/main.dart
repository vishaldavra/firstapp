import 'dart:ui';

import 'package:firstapp/routes.dart';
import 'package:firstapp/videoactivity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
      initialRoute: Routes.homeroute,
      routes: {
        Routes.homeroute: (context) => const MyHomePage(title: "Argon"),
        Routes.videoroute: (context) => App()
      },
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "ARGON",
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                fontSize: 25,
                letterSpacing: 2,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 40.2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          )),
          elevation: 0.00,
          backgroundColor: Colors.lightBlueAccent[200],
        ), //AppBar
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bc.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Color(0xFF292D32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRect(
                        child: Container(
                          width: double.infinity,
                          height: 400.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 80,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Mobile',
                                    hintStyle: const TextStyle(fontSize: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        color: Colors.white,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    contentPadding: const EdgeInsets.all(16),
                                    fillColor:
                                        Colors.lightBlue.withOpacity(0.1),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: const TextStyle(fontSize: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        color: Colors.white,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    contentPadding: const EdgeInsets.all(16),
                                    fillColor:
                                        Colors.lightBlue.withOpacity(0.1),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 120,
                                height: 60,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white.withOpacity(0.1),
                                      offset: Offset(-6.0, -6.0),
                                      blurRadius: 16.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(6.0, 6.0),
                                      blurRadius: 16.0,
                                    ),
                                  ],
                                  color: Color(0xFF292D32),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  "Login",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
