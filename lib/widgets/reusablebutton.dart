import 'package:flutter/material.dart';
import '../constants/colorss.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({Key? key,
  required this.onTap, required this.text, required this.borderRadius, this.color = ColorsApp.blue,
  }) :super(key: key);

  final VoidCallback onTap;
  final String text;
  final double borderRadius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: Text(text,style:Theme.of(context).textTheme.bodyMedium,),
      ),
    );
  }
}
