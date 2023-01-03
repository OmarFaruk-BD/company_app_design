import 'package:flutter/material.dart';

class InvoiceBox extends StatelessWidget {
  const InvoiceBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFF10AB83)),
          bottom: BorderSide(color: Color(0xFF10AB83)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 15, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  'Invoice Date : ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    height: 1.8,
                  ),
                ),
                SizedBox(width: 11),
                Text(
                  '01 January 2022',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.8,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Row(
              children: const [
                Text(
                  'Invoice No. : ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    height: 1.8,
                  ),
                ),
                SizedBox(width: 11),
                Text(
                  '5386328',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.8,
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
