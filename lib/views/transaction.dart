import 'package:flutter/material.dart';
import 'package:payment_task_ui/constants/textss.dart';
import 'package:payment_task_ui/widgets/reusablebutton.dart';
import '../constants/textstyle.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(TextLine.transaction,style:largtext,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableButton(onTap: (){}, text: TextLine.onhold, borderRadius: 30,color: Colors.grey.shade300,),
              ReusableButton(onTap: (){}, text: TextLine.payouts, borderRadius: 30,),
              ReusableButton(onTap: (){}, text: TextLine.refund, borderRadius: 30,color: Colors.grey.shade300,),
            ],
          ),
        ]
      ),
    );
  }
}
