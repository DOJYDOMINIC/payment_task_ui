import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/textstyle.dart';

class MethodsWidget extends StatelessWidget {
  MethodsWidget(
      {Key? key,   this.ontap, required this.text, required this.text2, this.icon})
      : super(key: key);

   final VoidCallback? ontap;
  final String text;
  final String text2;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(text,style: largblacktext,),
      GestureDetector(
        onTap: ontap,
        child: Wrap(
          children: [
            Text(text2,style: mediumtext2,),
            Icon(
              icon,
              size: 18,
              color: Color(0xff616161),
            ),
          ],
        ),
      ),
    ]);
  }
}
