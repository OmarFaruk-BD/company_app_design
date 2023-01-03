import 'package:flutter/material.dart';

class RemainingBalanceBox extends StatelessWidget {
  const RemainingBalanceBox({
    Key? key,
    this.amount = '30000',
  }) : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: const Color(0xFF10AB83).withOpacity(.5)),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          const Text(
            'Remaining Balance',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Container(
            color: const Color(0xFF10AB83).withOpacity(.5),
            height: 38,
            width: 1,
          ),
          SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '\u09F3 $amount',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 26),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
