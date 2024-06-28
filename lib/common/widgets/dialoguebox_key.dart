import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linkedin_test/constants/constants.dart';

class FormDialogExample extends StatelessWidget {
  const FormDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kprimaryColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.all(4),
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.close, color: kprimaryColor)),
              ),
              Text('Contact', style: ksmallText),
              const SizedBox(height: 16),
              TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                    hintText: 'Enter Contact Number',
                    hintStyle: ksmallTextFaded,
                    enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: kprimaryColor, width: 0.0)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: kprimaryColor, width: 0.0)),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style: ksmallText),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.indigo),
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Center(
                    child: Text("Apply", style: ksmallText),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
