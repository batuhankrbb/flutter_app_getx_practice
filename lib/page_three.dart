import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Column(
        children: [
          Text(
            "Welcome to Page 3",
            style: TextStyle(fontSize: 25),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Go to X",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
