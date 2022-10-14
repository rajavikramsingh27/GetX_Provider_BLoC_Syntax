
import 'package:flutter/material.dart';

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({Key? key}) : super(key: key);

  static const arrayOne = ['One', 'Two',  'Three',  'Four',  'Five',  'Six',  'Seven',  'Eight',  'Nine',  'Ten',  'Eleven',  'Tweleve',  'Thirteen',  'Fourteen',  'Fifteen',  'Sixteen',  'Seventeen',  'Eighteen',  'Ninteen',  'Twenty'];
  static const arrayTwo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'GetX'
        ),
      ),
      body: ListView.separated(
          padding: EdgeInsets.only(bottom: 16, top: 16),
          itemCount: arrayOne.length,
          separatorBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              height: 2,
              color: Colors.blueAccent,
            );
          },
          itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(arrayOne[index]),
                SizedBox(height: 10,),
                Text(arrayTwo[index].toString()),
              ],
            ),
            SizedBox(width: 16,),
            Icon(Icons.check_circle_sharp, color: Colors.blue,)
          ],
        );
      }),
    );
  }
}
