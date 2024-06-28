import 'package:flutter/material.dart';
import 'package:linkedin_test/common/widgets/homepage_payment_block.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          const HomePagePaymentBlock(),
        ],
      ),
    );
  }
}
