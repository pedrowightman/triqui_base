import 'package:flutter/material.dart';
import 'package:triqui/domain/controllers/triqui_controller.dart';
import 'package:get/get.dart';

class Casilla_st extends StatelessWidget {
  final int number;
  final String texto;
  const Casilla_st(this.number, this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TriquiController controller = Get.find();
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: MaterialButton(
          color: Theme.of(context).primaryColor,
          child: Text(
            texto,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          // we raise a new event
          onPressed: () => controller.updateTablero(number),
        ));
  }
}
