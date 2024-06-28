import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:linkedin_test/common/widgets/custom_text_feild.dart';
import 'package:linkedin_test/constants/constants.dart';
import 'package:linkedin_test/screens/payment_detail_screen.dart';

class CustomDialogue extends StatelessWidget {
  const CustomDialogue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Blurred background
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        // Centered dialog
        Center(
          child: Container(
            width: 930,
            height: 283,
            color: kprimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'ENTER YOUR PRIVATE KEY',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 18),
                  const CustomTextField(),
                  const SizedBox(height: 18),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentDetailScreen()));
                      },
                      child: Container(
                        width: 183,
                        height: 42,
                        color: kwhiteColor.withOpacity(0.1),
                        child: Center(
                            child: Text(
                          'CONTINUE',
                          style: ksmallText.copyWith(
                              fontSize: 16, color: kwhiteColor),
                        )),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
