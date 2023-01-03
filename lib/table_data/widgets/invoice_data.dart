// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class InvoiceOrReturnBox extends StatelessWidget {
  InvoiceOrReturnBox({
    Key? key,
    this.date = '01 January 2022',
    this.invoiceOrReturnNo = '5386328',
    this.isInvoiceBox = true,
  }) : super(key: key);

  final String date;
  final String invoiceOrReturnNo;
  bool isInvoiceBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFF10AB83)),
          bottom: BorderSide(color: Color(0xFF10AB83)),
          right: BorderSide(color: Color(0xFF10AB83)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 15, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  isInvoiceBox ? 'Invoice Date : ' : 'Return Date : ',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 11),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                Text(
                  isInvoiceBox ? 'Invoice No. : ' : 'Return No. : ',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 11),
                Text(
                  invoiceOrReturnNo,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
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
