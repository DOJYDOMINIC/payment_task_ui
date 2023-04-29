import 'package:flutter/material.dart';
import 'package:payment_task_ui/constants/textstyle.dart';

import '../constants/textss.dart';

class MethodPage extends StatelessWidget {
  const MethodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height/8,
      width: width,
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(TextLine.defaultmethod,style: largblacktext,),
              Wrap(
                children: [
                  Text(TextLine.onlinepayment,style: mediumtext2,),
                  Icon(Icons.arrow_forward_ios,size: 18,color: Color(0xff616161),),
                ],
              ),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(TextLine.paymentprofile,style: largblacktext,),
              Wrap(
                children: [
                  Text(TextLine.bankaccount,style: mediumtext2,),
                  Icon(Icons.arrow_forward_ios,size: 18,color: Color(0xff616161),),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Divider(thickness: 2,),
        ],
      ),
    );
  }
}
