import 'package:flutter/material.dart';
import 'package:flutter_application_demo/settings_page.dart';
import 'package:flutter_application_demo/transport_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 2.0, top: 90.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const TransportPage();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: const Text(
                      "My Transport",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 2.0, top: 90.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Settings();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: const Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
