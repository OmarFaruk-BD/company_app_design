import 'package:flutter/material.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    Key? key,
    required this.transactionHeaderName,
  }) : super(key: key);

  final String transactionHeaderName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF10AB83),
      padding: const EdgeInsets.only(top: 10, bottom: 8, left: 15),
      child: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            transactionHeaderName,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
