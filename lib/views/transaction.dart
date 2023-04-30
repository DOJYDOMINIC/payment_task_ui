import 'package:flutter/material.dart';
import 'package:payment_task_ui/constants/colorss.dart';
import 'package:payment_task_ui/constants/textss.dart';
import 'package:payment_task_ui/widgets/reusablebutton.dart';
import '../constants/textstyle.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        TextLine.transaction,
        style: largtext,
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableButton(
            text: TextLine.onhold,
            borderRadius: 30,
            color: Colors.grey.shade400,
          ),
          ReusableButton(
            text: TextLine.payouts,
            borderRadius: 30,
          ),
          ReusableButton(
            text: TextLine.refund,
            borderRadius: 30,
            color: Colors.grey.shade400,
          ),
        ],
      ),
      ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: ColorsApp.borderColor))
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width:45,
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorsApp.borderColor),
                                image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://images.unsplash.com/photo-1571781926291-c477ebfd024b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'))),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Order #1688068'),
                              Text("Jul 12 2:06 PM",style: normaltext,)
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('₹ 799',style: listamtblue,),
                          Row(
                            children: [
                              CircleAvatar(radius: 5,backgroundColor: Colors.green,),
                              SizedBox(width: 5,),
                              Text('Sucessful',style:normaltext,),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text('799 deposited to 5886847411544',style: extrasmalltext,)
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
