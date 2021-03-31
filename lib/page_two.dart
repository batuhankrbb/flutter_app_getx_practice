import 'package:flutter/material.dart';
import 'package:flutter_app_getx_practice/page_three.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  void goToThird() {
    //navigator.push(MaterialPageRoute(builder: (context) => Page2()));
    Get.to(Page3());
  }

  void showSnackBar() {}

  void showDialog() {}

  void showBottomSheet() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Welcome to Page 2",
            style: TextStyle(fontSize: 25),
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              "Go to Third ",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          SizedBox()
        ],
      ),
    );
  }
}
