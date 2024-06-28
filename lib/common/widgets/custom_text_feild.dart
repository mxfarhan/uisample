import 'package:flutter/material.dart';
import 'package:linkedin_test/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 793,
      height: 64,
      decoration: BoxDecoration(
          color: const Color(0xff0000004d).withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 1, color: const Color(0xff1010101a).withOpacity(0.1))),
      child: Padding(
        padding: const EdgeInsets.only(left: 22, top: 8),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'RANDOM01010E01129754654',
            hintStyle: ksmallTextFaded.copyWith(fontSize: 18),
            border: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
