import 'package:demo_limited_company_app/table_data/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class TableDataPage extends StatelessWidget {
  const TableDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF10AB83),
        bottomOpacity: 0,
        centerTitle: true,
        title: const Text(
          'Table Data',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 22,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu_open_rounded,
            size: 15,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(),
      drawer: const CustomDrawer(),
    );
  }
}
