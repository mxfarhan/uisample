import 'package:flutter/material.dart';
import 'package:linkedin_test/constants/constants.dart';

class PaymentDetailTextWidgets extends StatelessWidget {
  const PaymentDetailTextWidgets(
      {super.key,
      required this.upperText,
      required this.DownText,
      this.isBGText = false});

  final String upperText;
  final String DownText;
  final bool isBGText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          upperText,
          style: ksmallText.copyWith(
            fontSize: 16,
          ),
        ),
        !isBGText
            ? Text(DownText, style: ksmallText)
            : Container(
                width: 40,
                height: 18,
                decoration: BoxDecoration(
                  color: kwhiteColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(DownText, style: ksmallText),
                ),
              ),
      ],
    );
  }
}
