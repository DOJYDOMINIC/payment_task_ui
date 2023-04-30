

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/colorss.dart';
import '../constants/textstyle.dart';
import '../control/Providerone.dart';

class OverviewBox extends StatelessWidget {
  const OverviewBox({Key? key, required this.title, required this.amount, this.ontap, this.color}) : super(key: key);
 final String title;
 final String amount;
 final VoidCallback? ontap;
 final Color? color;
  @override
  Widget build(BuildContext context) {
    final providerone = Provider.of<ProviderOne>(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height/8.5,
      width: width/2.4,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(title,style: whitetext),
            Text(amount,style:whitetextbold,)
          ],
        ),
      ),
    );
  }
}
