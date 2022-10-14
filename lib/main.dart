import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
// import 'package:provider_bloc/GetX/ListViewCustom.dart';
import 'package:provider_bloc/Provider/ProviderCustom.dart';
import 'package:provider_bloc/Provider/ListViewCustom.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}


// // Provider Main
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SocialMediaBloc(SimpleSocialMediaRepository()),
        ),
      ],
      child: MaterialApp(
        home: ListViewCustom(),
      ),
    );

  }
}



// // Provider Main
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider<ProviderCustom>(create: (_) => ProviderCustom()),
//       ],
//       child: MaterialApp(
//         home: ListViewCustom(),
//       ),
//     );
//
//   }
// }






// // GetX Main
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: ListViewCustom(),
//     );
//   }
// }


//https://github.com/mahdinazmi/Fetching-Data-From-the-API-using-BLoC
// https://github.com/mahdinazmi/Fetching-Data-From-The-API-Using-BLoC/blob/main/lib/page/covid-page.dart