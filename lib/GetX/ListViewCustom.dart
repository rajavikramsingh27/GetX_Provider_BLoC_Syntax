import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../GetX/Controller.dart';


class ListViewCustom extends StatelessWidget {
  ListViewCustom({Key? key}) : super(key: key);

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('GetX'),
      ),
      body: GetBuilder(
          init: Controller(),
          initState: (state) {
            controller.loadSatate();
          },
          builder: (context) {
            return Obx(()=>ListView.separated(
                padding: EdgeInsets.only(bottom: 16, top: 16),
                itemCount: controller.arrayOne.length,
                separatorBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    height: 2,
                    color: Colors.blueAccent,
                  );
                },
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(controller.arrayOne[index]),
                            SizedBox(
                              height: 10,
                            ),
                            Text(controller.arrayTwo[index].toString()),
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        if (controller.arrSelected[index])
                          Icon(
                            Icons.check_circle_sharp,
                            color: Colors.blue,
                          )
                      ],
                    ),
                    onTap: () => controller.onTap(index),
                  );
                }));
          }),
    );
  }
}
