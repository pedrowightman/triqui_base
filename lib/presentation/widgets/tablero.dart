import 'package:triqui/domain/controllers/triqui_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'casilla_stateless.dart';

class Tablero_st extends StatelessWidget {
  void reset() {
    TriquiController controller = Get.find();
    controller.reset();
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    // here we ask the library to find the instance of the controller
    TriquiController controller = Get.find();
    return Container(
        child: SafeArea(
      child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.00, 3.00),
                          color: Color(0xff000000).withOpacity(0.16),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(4.00),
                    ),
                    child: Text(
                      "${controller.fin > -2 ? controller.fin == -1 ? "Ganó O" : controller.fin == 1 ? "Ganó X" : "Empate!" : controller.turno > 0 ? "Turno de X" : controller.turno < 0 ? "Turno de O" : " "}",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(0, controller.getTextMatriz(0)),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(1, controller.getTextMatriz(1)),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(2, controller.getTextMatriz(2)),
                      )),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(3, controller.getTextMatriz(3)),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(4, controller.getTextMatriz(4)),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(5, controller.getTextMatriz(5)),
                      )),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(6, controller.getTextMatriz(6)),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(7, controller.getTextMatriz(7)),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Casilla_st(8, controller.getTextMatriz(8)),
                      )),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: MaterialButton(
                              color: Theme.of(context).accentColor,
                              onPressed: () => reset(),
                              child: Text(
                                "Reset",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                )),
              ])),
    ));
  }
}
