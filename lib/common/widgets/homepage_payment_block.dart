import 'package:flutter/material.dart';
import 'package:linkedin_test/common/widgets/custom_dialogue.dart';
import 'package:linkedin_test/common/widgets/dropdown_entity.dart';
import 'package:linkedin_test/common/widgets/payment_card.dart';
import 'package:linkedin_test/constants/constants.dart';
import 'package:linkedin_test/common/widgets/custom_button.dart';

class HomePagePaymentBlock extends StatelessWidget {
  const HomePagePaymentBlock({
    super.key,
    this.isPaymentScreen = false,
  });

  final bool isPaymentScreen;

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.blue.withOpacity(0.01),
            body: const CustomDialogue());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Center(
        child: Stack(
          children: [
            Container(
              width: 511,
              height: 488,
              decoration: BoxDecoration(
                  color: kwhiteColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                      color: kwhiteColor.withOpacity(0.075), width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Image(
                                image: AssetImage('assets/kingu.png'),
                                width: 26,
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7, top: 5),
                                child: Text(
                                  'KingSwap',
                                  style: ksmallText.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          isPaymentScreen
                              ? Container(
                                  width: 219,
                                  height: 34,
                                  decoration: BoxDecoration(
                                      color: kwhiteColor.withOpacity(0.05),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          width: 1,
                                          color:
                                              kwhiteColor.withOpacity(0.05))),
                                  child: Row(
                                    children: [
                                      Text(
                                        ' MevSafe 50% Slippage ',
                                        style: ksmallText.copyWith(
                                            color: const Color(0xffB69FFF)),
                                      ),
                                      const Image(
                                        image: AssetImage('assets/setting.png'),
                                        color: Color(0xffB69FFF),
                                        width: 18,
                                      )
                                    ],
                                  ),
                                )
                              : const Text('')
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 477,
                      height: 407,
                      color: kprimaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16, top: 4),
                              child: Column(
                                children: [
                                  const PaymentCard(
                                    label: 'You pay',
                                    amount: '2.07',
                                    categories: [
                                      DropDownEntity(
                                          name: 'ETH', img: 'assets/eth.png'),
                                      DropDownEntity(
                                          name: 'ETH', img: 'assets/king.png'),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  const PaymentCard(
                                    label: 'You received',
                                    amount: '0.0',
                                    categories: [
                                      DropDownEntity(
                                          name: 'ETH', img: 'assets/eth.png'),
                                      DropDownEntity(
                                          name: 'ETH', img: 'assets/king.png'),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  isPaymentScreen
                                      ? CustomButton(
                                          ontap: () {},
                                          greeny: false,
                                        )
                                      : CustomButton(
                                          ontap: () {
                                            showCustomDialog(context);
                                          },
                                        ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 130),
                              child: Center(
                                child: Container(
                                  width: 33,
                                  decoration: BoxDecoration(
                                      color: kwhiteColor.withOpacity(0.05),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 6, color: kprimaryColor),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/Group.png'),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
