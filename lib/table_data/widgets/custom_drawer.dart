import 'package:demo_limited_company_app/table_data/widgets/drawer_header.dart';
import 'package:demo_limited_company_app/table_data/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 46,
      child: SafeArea(
        child: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                const CustomDrawerHeader(),
                DrawerItem(),
              ],
            )),
      ),
    );
  }
}
