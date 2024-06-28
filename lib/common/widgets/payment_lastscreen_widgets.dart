import 'package:flutter/material.dart';
import 'package:linkedin_test/constants/constants.dart';

class PaymentDetailsWidgetsLastScreen extends StatelessWidget {
  const PaymentDetailsWidgetsLastScreen({
    super.key,
    required this.leftWidget,
    required this.rightUPText,
    required this.rightDownText,
    this.islarge = false,
  });

  final Widget leftWidget;
  final String rightUPText;
  final String rightDownText;
  final bool islarge;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: ,
            children: [
              leftWidget,
              // SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  islarge
                      ? Text(
                          rightUPText,
                          style: ksmallText.copyWith(
                            fontFamily: 'JostMed',
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      : Text(
                          rightUPText,
                          style: ksmallText.copyWith(
                              fontFamily: 'IBMPlexMono-Light', fontSize: 16),
                        ),
                  islarge
                      ? Text(
                          rightDownText,
                          style: ksmallText.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'JostMed',
                            color: kwhiteColor.withOpacity(0.5),
                          ),
                        )
                      : Text(
                          rightDownText,
                          style: ksmallText.copyWith(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'IBMPlexMono-Light',
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 303,
          height: 1,
          color: kwhiteColor.withOpacity(0.1),
        )
      ],
    );
  }
}
