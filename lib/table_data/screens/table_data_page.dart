import 'package:demo_limited_company_app/drawer/widgets/custom_drawer.dart';
import 'package:demo_limited_company_app/table_data/widgets/pay_stadium_button.dart';
import 'package:demo_limited_company_app/table_data/widgets/previous_due_box_widget.dart';
import 'package:demo_limited_company_app/table_data/widgets/payment_table.dart';
import 'package:demo_limited_company_app/table_data/widgets/purchase_table.dart';
import 'package:demo_limited_company_app/table_data/widgets/return_table.dart';
import 'package:flutter/material.dart';

class TableDataPage extends StatelessWidget {
  TableDataPage({super.key});
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: const CustomDrawer(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF10AB83),
      elevation: 0,
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
          Icons.menu,
          size: 20,
          color: Colors.white,
        ),
        onPressed: () {
          _key.currentState?.openDrawer();
        },
      ),
    );
  }

  Widget _buildBody() {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 68),
      children: const [
        PreviousDueBoxWidget(),
        PurchaseTable(),
        PaymentTable(),
        ReturnTable(),
        SizedBox(height: 25),
        PayStadiumButton(),
      ],
    );
  }
}
