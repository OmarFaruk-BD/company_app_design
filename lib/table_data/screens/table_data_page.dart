import 'package:demo_limited_company_app/table_data/widgets/custom_drawer.dart';
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
      body: Container(),
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
}
