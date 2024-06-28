import 'package:flutter/material.dart';
import 'package:linkedin_test/constants/constants.dart';

class DropDownEntity extends StatelessWidget {
  const DropDownEntity({super.key, required this.name, required this.img});

  final String name;
  final String img;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76,
      height: 30,
      child: Row(
        children: [
          Container(
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
            // child: Image(
            //     image: AssetImage(img),
            //     width: 21,
            //     height: 21,
            //     fit: BoxFit.fill),
          ),
          const SizedBox(width: 5),
          Text(name, style: ksmallText.copyWith(fontSize: 18)),
        ],
      ),
    );
  }
}
