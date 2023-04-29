import 'package:flutter/material.dart';
import 'package:payment_task_ui/constants/textstyle.dart';
import 'package:payment_task_ui/widgets/reusablebutton.dart';
import 'package:provider/provider.dart';
import '../constants/colorss.dart';
import '../constants/textss.dart';
import '../control/Providerone.dart';

class TransactionLimit extends StatelessWidget {
  const TransactionLimit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerone = Provider.of<ProviderOne>(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.27,
      width: width * 9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: ColorsApp.borderColor)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              TextLine.transactionlimit,
              style: largtext,
            ),
            Text(
              TextLine.transactiondiscrip,
              style: mediumtext,
            ),
            LinearProgressIndicator(
              value: providerone.progress,
              backgroundColor: Colors.grey[300],
              valueColor:
              AlwaysStoppedAnimation<Color>(Colors.blue),

            ),
            Text(
              '${providerone.totalAmount-providerone.usedAmount} left out of ${providerone.totalAmount}',
              style: mediumtext,
            ),
            ReusableButton(
                onTap: () {
                  providerone.Add();
                }, text: TextLine.increaselimit, borderRadius: 5),
          ],
        ),
      ),
    );
  }
}
