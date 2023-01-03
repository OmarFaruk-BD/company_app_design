import 'package:demo_limited_company_app/table_data/widgets/drawer_header.dart';
import 'package:demo_limited_company_app/table_data/widgets/drawer_item.dart';
import 'package:demo_limited_company_app/table_data/widgets/expanded_drawer_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isPurchaseSelected = false;

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
                const SizedBox(height: 5),
                const DrawerItemTile(),
                DrawerItem(
                  isSelected: isPurchaseSelected,
                  onTap: () {
                    setState(() {
                      isPurchaseSelected = !isPurchaseSelected;
                    });
                  },
                ),
                DrawerItem(
                  name: 'Sell',
                  leadingIcon: CupertinoIcons.bag_fill,
                ),
                DrawerItem(
                  name: 'Stock / Inventory',
                  leadingIcon: CupertinoIcons.house,
                ),
              ],
            )),
      ),
    );
  }
}
