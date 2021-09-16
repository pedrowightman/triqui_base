import 'package:triqui/presentation/screens/triqui_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// GetXProvider provides access to the ConvertionController to all its children

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Triqui',
      theme: ThemeData(
        primaryColor: Color(0xff4264b4),
        accentColor: Color(0xff1d2448),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Super Triqui!'),
        ),
        body: Center(
          child: MaterialButton(
              child: Text('Comenzar'),
              onPressed: () {
                Get.to(Triqui_screen());
              }),
        ),
      ),
    );
  }
}
