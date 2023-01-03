// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo_limited_company_app/drawer/widgets/custom_drawer.dart';
import 'package:demo_limited_company_app/table_data/widgets/invoice_data.dart';
import 'package:demo_limited_company_app/table_data/widgets/product_details.dart';
import 'package:demo_limited_company_app/table_data/widgets/transaction_details_box.dart';
import 'package:demo_limited_company_app/table_data/widgets/transaction_header.dart';
import 'package:flutter/material.dart';

class TableDataPage extends StatelessWidget {
  TableDataPage({super.key});
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      //   backgroundColor: const Color(0xFFC9ECE3),
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: const CustomDrawer(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF10AB83),
      bottomOpacity: 0,
      centerTitle: true,
      title: const Text(
        'Table Data',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 2.2,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.menu_open_rounded,
          size: 15,
          color: Colors.white,
        ),
        onPressed: () {
          _key.currentState?.openDrawer();
        },
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 25),
      child: Container(
        width: 263,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF10AB83)),
          borderRadius: const BorderRadius.all(Radius.circular(2)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TransactionHeader(),
                  InvoiceBox(),
                  ProductDetails(),
                  ProductDetails(),
                  ProductDetails(),
                  TransactionDoubleItemBox(
                    firstItemName: 'Discount',
                    firstItemAmount: '0',
                    secondItemName: 'VAT',
                    secondItemAmount: '0',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
