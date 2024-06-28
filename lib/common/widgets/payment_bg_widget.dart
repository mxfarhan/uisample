import 'package:flutter/material.dart';
import 'package:linkedin_test/constants/constants.dart';

class PaymentBGWidget extends StatelessWidget {
  const PaymentBGWidget({
    super.key, required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 488,
      decoration: BoxDecoration(
          color: kwhiteColor.withOpacity(0.05),
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: kwhiteColor.withOpacity(0.075), width: 1)),
      child: widget,
    );
  }
}
