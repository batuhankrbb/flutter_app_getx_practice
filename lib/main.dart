import 'package:flutter/material.dart';
import 'package:flutter_app_getx_practice/page_two.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  void goToSecond() {
    //navigator.push(MaterialPageRoute(builder: (context) => Page2()));
    Get.to(Page2());
  }

  void showSnackBar() {
    Get.snackbar(
      "This is Snackbar",
      "Hello from Message. There are a lot of properties!",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }

  void showDialog() {
    Get.defaultDialog(
        title: "AN EASY DIALOG", content: Text("GetX is super simple"));
  }

  void showBottomSheet() {
    Get.bottomSheet(
      Container(
        child: Text("OMG THIS IS BOTTOMSHEET"),
        color: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Welcome to Main Page",
            style: TextStyle(fontSize: 25),
          ),
          TextButton(
            onPressed: () {
              Get.to(Page2());
            },
            child: Text(
              "Go to Second",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Go to Second by Name",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {
              showDialog();
            },
            child: Text(
              "Open Dialog",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {
              showBottomSheet();
            },
            child: Text(
              "Open Bottom Sheet",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {
              showSnackBar();
            },
            child: Text(
              "Open Snackbar",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          SizedBox()
        ],
      ),
    );
  }
}
