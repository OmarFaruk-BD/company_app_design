import 'package:demo_limited_company_app/table_data/widgets/due_box.dart';
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
        border: Border.all(color: const Color(0xFF10AB83)),
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
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0xFF10AB83)),
                      bottom: BorderSide(color: Color(0xFF10AB83)),
                      right: BorderSide(color: Color(0xFF10AB83)),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 15, bottom: 12),
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
                )
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
}
