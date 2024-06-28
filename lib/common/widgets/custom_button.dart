import 'package:flutter/material.dart';
import 'package:linkedin_test/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.ontap,
    this.greeny = true,
  });

  final VoidCallback? ontap;
  final bool greeny;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: greeny
            ? Container(
          width: 444,
          height: 56,
          color: const Color(0xff41FF96),
          child: Center(
              child: Text(
                'GENERATE PRIVATE KEY',
                style: ksmallText.copyWith(
                    fontSize: 18, color: const Color(0xff0F3721)),
              )),
        )
            : Container(
          width: 444,
          height: 56,
          decoration: BoxDecoration(

              border: Border.all(
                  width: 1, color: kwhiteColor.withOpacity(0.2))),

          child: Center(child: Text('SELECT A TOKEN', style: ksmallTextFaded,)),
        ));
  }
}
