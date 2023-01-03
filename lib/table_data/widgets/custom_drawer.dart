import 'package:demo_limited_company_app/table_data/widgets/drawer_header.dart';
import 'package:demo_limited_company_app/table_data/widgets/drawer_item_tile.dart';
import 'package:demo_limited_company_app/table_data/widgets/expanded_items.dart';
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
                DrawerItemTile(
                  name: 'Purchase',
                  leadingIcon: Icons.shopping_cart,
                  expantionWidget: const ExpandedItems(),
                  onTap: () {},
                ),
                DrawerItemTile(
                  name: 'Sell',
                  leadingIcon: CupertinoIcons.bag_fill,
                  //  expantionWidget: ,
                  onTap: () {},
                ),
                DrawerItemTile(
                  name: 'Stock / Inventory',
                  leadingIcon: CupertinoIcons.house,
                  //  expantionWidget: [],
                  onTap: () {},
                ),
              ],
            )),
      ),
    );
  }
}
