
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colorss.dart';
import '../constants/textss.dart';
import '../constants/textstyle.dart';
import '../control/Providerone.dart';

class PaymentOverview extends StatelessWidget {
  const PaymentOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerone = Provider.of<ProviderOne>(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
    height: height*.2,
      width: width,
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(TextLine.paymentoverview,style:largtext,),
              Wrap(
                children: [
                  Text(TextLine.lifetime,style: mediumtext2,),
                  Icon(Icons.keyboard_arrow_down_rounded,size: 18,color: Color(0xff616161),),
                ],
              ),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height/8.5,
                width: width/2.4,
                decoration: BoxDecoration(
                    color: ColorsApp.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(TextLine.amountonhold,style: whitetext,),
                      Text('₹0',style:whitetextbold,)
                    ],
                  ),
                ),
              ),
              Container(
                height: height/8.5,
                width: width/2.4,
                decoration: BoxDecoration(
                    color: ColorsApp.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(TextLine.amountreceived,style: whitetext,),
                      Text('₹ ${providerone.usedAmount}',style:whitetextbold,)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
