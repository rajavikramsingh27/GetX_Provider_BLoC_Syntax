
import 'dart:ffi';

import 'package:get/get.dart';


class Controller extends GetxController {
  RxList<String> arrayOne = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Tweleve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Ninteen',
    'Twenty'
  ].obs;

  RxList<int> arrayTwo = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ].obs;

  RxList<bool> arrSelected = <bool>[].obs;

  loadSatate() {
    arrSelected.clear();
    for (int i = 0; i<arrayOne.length; i++) {
      arrSelected.add(false);
    }
  }

  onTap(int index) {
    arrSelected[index] = !arrSelected[index];

    update();
  }

}