import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 65, 139, 67),
        title: Text('Dark & Light Theme',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        actions: [
          Icon(
            Icons.account_box,
            color: Colors.white,
            size: 40,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.wb_sunny,
              size: 150,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            child: Text('Change Theme'),
            onPressed: () {
              Get.isDarkMode
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            },
          )
        ],
      ),
    );
  }
}