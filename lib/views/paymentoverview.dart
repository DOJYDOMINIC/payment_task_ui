
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/colorss.dart';
import '../constants/textss.dart';
import '../constants/textstyle.dart';
import '../control/Providerone.dart';
import '../widgets/payment_overview_box.dart';

class PaymentOverview extends StatelessWidget {
  const PaymentOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerone = Provider.of<ProviderOne>(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
    height: height*.19,
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
              OverviewBox(title:TextLine.amountonhold, amount: '₹ 0',color: ColorsApp.orange),
              OverviewBox(title:TextLine.amountreceived, amount: '₹ ${providerone.usedAmount}',color:ColorsApp.green ,),
            ],
          )
        ],
      ),
    );
  }
}
