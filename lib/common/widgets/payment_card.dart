import 'package:flutter/material.dart';
import 'package:linkedin_test/constants/constants.dart';

class PaymentCard extends StatefulWidget {
  final String label;
  final String amount;

  final List<Widget> categories;

  const PaymentCard({
    super.key,
    required this.label,
    required this.amount,
    required this.categories,
  });

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  Widget? selectedIndexCategory;

  @override
  void initState() {
    super.initState();
    selectedIndexCategory = widget.categories[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 444,
      height: 121,
      color: Colors.white.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.label,
                  style: ksmallTextFaded,
                ),
                Text(widget.amount, style: ksmallText.copyWith(fontSize: 36)),
              ],
            ),
            Container(
              width: 115,
              height: 33,
              color: kprimaryColor,
              child: DropdownButton<Widget>(
                isExpanded: true,
                underline: const SizedBox.shrink(),
                dropdownColor: kprimaryColor,
                value: selectedIndexCategory,
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: kwhiteColor,
                ),
                onChanged: (Widget? newValue) {
                  setState(() {
                    selectedIndexCategory = newValue;
                  });
                },
                items: widget.categories.map((Widget category) {
                  return DropdownMenuItem<Widget>(
                    value: category,
                    child: category,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
