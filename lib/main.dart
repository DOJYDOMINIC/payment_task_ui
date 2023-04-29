
import 'package:flutter/material.dart';
import 'package:payment_task_ui/control/Providerone.dart';
import 'package:payment_task_ui/views/home_page.dart';
import 'package:payment_task_ui/views/theam_app/app_theam.dart';
import 'package:provider/provider.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderOne(),)
      ],
      child: MaterialApp(
        theme: AppTheam.apptheam,
        debugShowCheckedModeBanner: false,
        home: Consumer(
            builder: (context, value, child) => HomePage()),
      ),
    );
  }
}
