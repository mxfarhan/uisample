import 'package:flutter/material.dart';
import 'package:linkedin_test/common/widgets/dropdown_entity.dart';
import 'package:linkedin_test/common/widgets/payment_bg_widget.dart';
import 'package:linkedin_test/common/widgets/payment_lastscreen_widgets.dart';
import 'package:linkedin_test/constants/constants.dart';

class FirstPyamentDetailedBlock extends StatelessWidget {
  const FirstPyamentDetailedBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaymentBGWidget(
      widget: Column(
        children: [
          PaymentDetailsWidgetsLastScreen(
            leftWidget: Text(
              'Holdings',
              style: ksmallText.copyWith(fontSize: 18, fontFamily: 'JostMed'),
            ),
            rightUPText: '\$1,125',
            rightDownText: 'Estimated Value',
            islarge: true,
          ),
          const PaymentDetailsWidgetsLastScreen(
              leftWidget: DropDownEntity(img: 'eth.png', name: 'ETH'),
              rightUPText: '0.3',
              rightDownText: '\$672.32'),
          const PaymentDetailsWidgetsLastScreen(
              leftWidget: DropDownEntity(img: 'king.png', name: 'KING'),
              rightUPText: '999,400',
              rightDownText: '\$153.20'),
          const PaymentDetailsWidgetsLastScreen(
              leftWidget: DropDownEntity(img: 'Group.png', name: 'PEPE'),
              rightUPText: '124,512,484',
              rightDownText: '\$72.32'),
        ],
      ),
    );
  }
}
