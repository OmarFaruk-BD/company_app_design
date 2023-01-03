import 'package:flutter/material.dart';

class DueBoxWidget extends StatelessWidget {
  const DueBoxWidget({
    Key? key,
    this.amount = '30000',
  }) : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.only(bottom: 10),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Due\n',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            height: 1.3,
          ),
          children: [
            TextSpan(
              text: amount,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFFF37048),
                fontWeight: FontWeight.w600,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
