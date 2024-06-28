import 'package:flutter/material.dart';
import 'package:linkedin_test/common/widgets/homepage_payment_block.dart';
import 'package:linkedin_test/common/widgets/last_screen_main_3widgets/first_payment_detailed_block.dart';
import 'package:linkedin_test/common/widgets/last_screen_main_3widgets/last_payment_Detailed_block.dart';
import 'package:linkedin_test/constants/constants.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF0B0718),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0, 0),
                radius: 0.9,
                colors: [
                  Color(0xFFABA9EB),
                  Color(0x82523E96),
                  Color(0x00523E96)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(image: AssetImage('assets/kingu.png')),
                Container(
                  width: 414,
                  height: 40,
                  decoration: BoxDecoration(
                      color: kwhiteColor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                          width: 1, color: kwhiteColor.withOpacity(0.05))),
                  child: Row(
                    children: [
                      Text(
                        ' 0xEA589c81d6a7567b5bde8048701E038832fe64w7 ',
                        style: ksmallText,
                      ),
                      const Image(
                        image: AssetImage('assets/share.png'),
                        color: kwhiteColor,
                        width: 18,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///               important block
          screenWidth > 1100
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FirstPyamentDetailedBlock(),
                    Padding(
                      padding: EdgeInsets.only(top: 21, left: 16, right: 16),
                      child: HomePagePaymentBlock(isPaymentScreen: true),
                    ),
                    LastPaymentDetailedBlock(),
                  ],
                )
              : const SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FirstPyamentDetailedBlock(),
                      Padding(
                        padding: EdgeInsets.only(top: 21, left: 16, right: 16),
                        child: HomePagePaymentBlock(isPaymentScreen: true),
                      ),
                      LastPaymentDetailedBlock(),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
