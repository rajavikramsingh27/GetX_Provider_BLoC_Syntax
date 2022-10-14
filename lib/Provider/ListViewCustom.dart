
import 'package:flutter/material.dart';
import '../Provider/ProviderCustom.dart';
import 'package:provider/provider.dart';

class ListViewCustom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Provider.of<ProviderCustom>(context, listen: false).loadState();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Provider'),
      ),
      body: Consumer<ProviderCustom>(
        builder: (context, provider, child) {
          return ListView.separated(
              padding: EdgeInsets.only(bottom: 16, top: 16),
              itemCount: provider.arrayOne.length,
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
                          Text(provider.arrayOne[index]),
                          SizedBox(
                            height: 10,
                          ),
                          Text(provider.arrayTwo[index].toString()),
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      if (provider.arrSelected[index])
                        Icon(
                          Icons.check_circle_sharp,
                          color: Colors.blue,
                        )
                    ],
                  ),
                  // onTap: () => provider.onTap(index),
                  onTap: () {
                    provider.onTap(index);
                  },
                );
              });
        },
      ),
    );
  }
}

