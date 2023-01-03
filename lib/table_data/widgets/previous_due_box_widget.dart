import 'package:demo_limited_company_app/table_data/widgets/due_box_widget.dart';
import 'package:demo_limited_company_app/table_data/widgets/transaction_header.dart';
import 'package:flutter/material.dart';

class PreviousDueBoxWidget extends StatelessWidget {
  const PreviousDueBoxWidget({
    Key? key,
    this.date = '01 January 2022',
    this.amount = '20000 ',
  }) : super(key: key);

  final String date;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF10AB83).withOpacity(.5)),
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const TransactionHeader(
                  transactionHeaderName: 'Dues',
                ),
                _buildPreviousDeoBox()
              ],
            ),
          ),
          DueBoxWidget(
            amount: amount,
          ),
        ],
      ),
    );
  }

  Container _buildPreviousDeoBox() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: const Color(0xFF10AB83).withOpacity(.5)),
          bottom: BorderSide(color: const Color(0xFF10AB83).withOpacity(.5)),
          right: BorderSide(color: const Color(0xFF10AB83).withOpacity(.5)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 15, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Previous Due',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 11),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
