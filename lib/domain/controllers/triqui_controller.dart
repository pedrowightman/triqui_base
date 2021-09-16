import 'package:get/get.dart';

class TriquiController extends GetxController {
  var _matriz = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ].obs;

  var _turno = 1.obs; //1 = X, -1 = O

  var _fin = (-2).obs; //-2: jugando, -1: : O, 0: empate, 1: X

  var _nturnos = 0.obs;

  int get turno => _turno.value;
  int get nturnos => _nturnos.value;
  int get fin => _fin.value;

  int getMatriz(int n) => _matriz[n ~/ 3][n % 3];

  String getTextMatriz(int n) => _matriz[n ~/ 3][n % 3] > 0
      ? "X"
      : _matriz[n ~/ 3][n % 3] < 0
          ? "O"
          : ".";

  bool updateTablero(int n) {
    int i = n ~/ 3;
    int j = n % 3;
    if (_fin.value == -2) {
      // El juego no ha terminado
      if (_matriz[i][j] == 0) {
        _matriz[i][j] = _turno.value;
        print("Casilla $n libre, en el turno $_turno.value");
        _fin.value = checkWinner() ? _turno.value : -2;
        _nturnos.value++;
        _turno.value *= -1;

        if (_fin.value == -1) {
          print("Juego terminado. Gano O");
        } else if (_fin.value == 1) {
          print("Juego terminado. Gano X");
        } else if (_nturnos.value == 9 && _fin.value == -2) {
          _fin.value = 0;
          print("Empate!");
        }

        return true;
      }
      print("Casilla $n ocupada");
      return false;
    } else {
      //EL juego ya terminó
      print("Juego terminado. Jugada invalida");
      return false;
    }
  }

  bool checkWinner() {
    int cont = 0;

    //Chequear las filas
    for (int i = 0; i < 3; i++) {
      cont = 0;
      for (int j = 0; j < 3; j++) {
        cont += _matriz[i][j];
      }
      if (cont == 3 || cont == -3) return true;
    }

    //Chequear las columnas
    for (int i = 0; i < 3; i++) {
      cont = 0;
      for (int j = 0; j < 3; j++) {
        cont += _matriz[j][i];
      }
      if (cont == 3 || cont == -3) return true;
    }

    //Chequear la diagonal principal
    cont = 0;
    for (int i = 0; i < 3; i++) {
      cont += _matriz[i][i];
    }
    if (cont == 3 || cont == -3) return true;

    //Chequear la diagonal secundaria
    cont = 0;
    for (int i = 0; i < 3; i++) {
      cont += _matriz[i][3 - 1 - i];
    }
    if (cont == 3 || cont == -3) return true;

    return false;
  }

  void reset() {
    _matriz.value = [
      [0, 0, 0],
      [0, 0, 0],
      [0, 0, 0]
    ];

    _turno.value = 1; //1 = X, -1 = O

    _nturnos.value = 0;

    _fin.value = -2;
  }
}
