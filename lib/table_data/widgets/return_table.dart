import 'package:demo_limited_company_app/table_data/widgets/due_box_widget.dart';
import 'package:demo_limited_company_app/table_data/widgets/invoice_data_box.dart';
import 'package:demo_limited_company_app/table_data/widgets/product_details.dart';
import 'package:demo_limited_company_app/table_data/widgets/remaining_balance_widget.dart';
import 'package:demo_limited_company_app/table_data/widgets/transaction_details_box.dart';
import 'package:demo_limited_company_app/table_data/widgets/transaction_header.dart';
import 'package:flutter/material.dart';

class ReturnTable extends StatelessWidget {
  const ReturnTable({
    Key? key,
  }) : super(key: key);

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
                  transactionHeaderName: 'Return',
                ),
                InvoiceOrReturnBox(
                  date: '01 January 2022',
                  invoiceOrReturnNo: '5386328',
                  isInvoiceBox: true,
                ),
                InvoiceOrReturnBox(
                  date: '01 January 2022',
                  invoiceOrReturnNo: '5386328',
                  isInvoiceBox: false,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: const Color(0xFF10AB83).withOpacity(.3)),
                      right: BorderSide(
                          color: const Color(0xFF10AB83).withOpacity(.3)),
                    ),
                  ),
                  child: Column(
                    children: const [
                      ProductDetails(
                        productName: 'Test product 01',
                        pcsCount: '100',
                        countNumber: '50',
                        amount: '5000',
                      ),
                    ],
                  ),
                ),
                const TransactionDoubleItemBox(
                  firstItemName: 'Discount',
                  firstItemAmount: '0',
                  secondItemName: 'VAT',
                  secondItemAmount: '0',
                ),
                const TransactionDoubleItemBox(
                  firstItemName: 'Grand Total',
                  firstItemAmount: '5000',
                  secondItemName: 'Previous Due',
                  secondItemAmount: '20000',
                ),
                const TransactionDoubleItemBox(
                  firstItemName: 'Total Amount',
                  firstItemAmount: '15000',
                  secondItemName: 'Total Paid',
                  secondItemAmount: '0',
                ),
                const RemainingBalanceBox(
                  amount: '15000',
                ),
              ],
            ),
          ),
          const DueBoxWidget(
            amount: '15000',
          ),
        ],
      ),
    );
  }
}
