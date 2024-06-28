import 'package:flutter/material.dart';
import 'package:linkedin_test/common/widgets/paymentDetailTextsWidgets.dart';
import 'package:linkedin_test/common/widgets/payment_bg_widget.dart';
import 'package:linkedin_test/constants/constants.dart';

class LastPaymentDetailedBlock extends StatelessWidget {
  const LastPaymentDetailedBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PaymentBGWidget(
          widget: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Active Trades',
                  style:
                      ksmallText.copyWith(fontSize: 18, fontFamily: 'JostMed'),
                ),
                const SizedBox(height: 60),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentDetailTextWidgets(
                        upperText: '0.1', DownText: '\$220.17'),
                    PaymentDetailTextWidgets(
                        upperText: 'PEPE', DownText: '3X', isBGText: true),
                    PaymentDetailTextWidgets(
                        upperText: '0.32', DownText: '\$720.17'),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentDetailTextWidgets(
                        upperText: '0.07', DownText: '\$153.20'),
                    PaymentDetailTextWidgets(
                        upperText: 'KNG', DownText: '6X', isBGText: true),
                    PaymentDetailTextWidgets(
                        upperText: '0.07', DownText: '\$153.20'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            width: 305,
            height: 27,
            color: kwhiteColor.withOpacity(0.075),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ENTRY',
                    style: ksmallText,
                  ),
                  Text('CURRENT', style: ksmallText),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Container(
            width: 303,
            height: 1,
            color: kwhiteColor.withOpacity(0.1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 233),
          child: Container(
            width: 303,
            height: 1,
            color: kwhiteColor.withOpacity(0.1),
          ),
        ),
      ],
    );
  }
}
