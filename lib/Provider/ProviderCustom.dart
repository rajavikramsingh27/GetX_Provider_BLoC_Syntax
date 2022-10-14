import 'package:flutter/material.dart';

class ProviderCustom extends ChangeNotifier {
  List<String> arrayOne = [
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
  ];

  List<int> arrayTwo = [
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
  ];

  List<bool> arrSelected = <bool>[];

  loadState() {
    arrSelected.clear();
    for (int i = 0; i < arrayOne.length; i++) {
      arrSelected.add(false);
    }

    // notifyListeners();
  }

  onTap(int index) {
    print(arrSelected[index]);
    arrSelected[index] = !arrSelected[index];
    print(arrSelected[index]);
    print(arrSelected);


    notifyListeners();
  }
}
