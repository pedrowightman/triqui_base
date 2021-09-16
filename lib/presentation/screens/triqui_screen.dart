import 'package:triqui/presentation/widgets/tablero.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:triqui/presentation/widgets/tablero_st.dart';

// GetXProvider provides access to the ConvertionController to all its children

class Triqui_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super Triqui!'),
      ),
      body: Center(
        child: Tablero_st(),
      ),
    );
  }
}
