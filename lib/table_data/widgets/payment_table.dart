import 'package:demo_limited_company_app/table_data/widgets/due_box_widget.dart';
import 'package:demo_limited_company_app/table_data/widgets/invoice_data_box.dart';
import 'package:demo_limited_company_app/table_data/widgets/remaining_balance_widget.dart';
import 'package:demo_limited_company_app/table_data/widgets/transaction_details_box.dart';
import 'package:demo_limited_company_app/table_data/widgets/transaction_header.dart';
import 'package:flutter/material.dart';

class PaymentTable extends StatelessWidget {
  const PaymentTable({
    Key? key,
  }) : super(key: key);

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
                  transactionHeaderName: 'Payment',
                ),
                InvoiceOrReturnBox(
                  date: '01 January 2022',
                  invoiceOrReturnNo: '53863323',
                  isInvoiceBox: true,
                ),
                const TransactionDoubleItemBox(
                  firstItemName: 'Discount',
                  firstItemAmount: '0',
                  secondItemName: 'VAT',
                  secondItemAmount: '0',
                ),
                const TransactionDoubleItemBox(
                  firstItemName: 'Grand Total',
                  firstItemAmount: '0',
                  secondItemName: 'Previous Due',
                  secondItemAmount: '30000',
                ),
                const TransactionDoubleItemBox(
                  firstItemName: 'Total Amount',
                  firstItemAmount: '30000',
                  secondItemName: 'Total Payment',
                  secondItemAmount: '10000',
                ),
                const RemainingBalanceBox(
                  amount: '20000',
                ),
              ],
            ),
          ),
          const DueBoxWidget(
            amount: '20000 ',
          ),
        ],
      ),
    );
  }
}
