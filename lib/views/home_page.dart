
import 'package:flutter/material.dart';
import 'package:payment_task_ui/constants/textss.dart';
import 'package:payment_task_ui/views/paymentoverview.dart';
import 'package:payment_task_ui/views/transaction.dart';
import 'package:payment_task_ui/views/transaction_limit.dart';

import 'methodpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text(TextLine.payments),
        actions: [
          Icon(Icons.info_outline)
        ],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TransactionLimit(),
              SizedBox(height: 20,),
              MethodPage(),
              PaymentOverview(),
              Transaction(),
            ],
          ),
        ),
      ) ,
    );
  }
}
