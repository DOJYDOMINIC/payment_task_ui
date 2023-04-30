import 'package:flutter/material.dart';
import '../constants/textss.dart';
import '../widgets/methodswidgets.dart';

class MethodPage extends StatelessWidget {
  const MethodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height*.125,
      width: width,
      // color: Colors.red,
      child: Column(
        children: [
          MethodsWidget(text: TextLine.defaultmethod, text2:TextLine.onlinepayment,icon: Icons.arrow_forward_ios,),
          SizedBox(height: 10,),
          MethodsWidget(text: TextLine.paymentprofile, text2:TextLine.bankaccount,icon: Icons.arrow_forward_ios,),
          SizedBox(height: 8,),
          Divider(thickness: 2,),
        ],
      ),
    );
  }
}
