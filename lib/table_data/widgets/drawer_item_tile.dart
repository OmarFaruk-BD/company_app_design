import 'package:demo_limited_company_app/table_data/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemTile extends StatefulWidget {
  const DrawerItemTile({
    super.key,
    this.name = 'Purchase',
    this.leadingIcon = Icons.shopping_cart,
    this.expantionWidget,
    this.onTap,
  });
  final VoidCallback? onTap;
  final String name;
  final IconData leadingIcon;
  final Widget? expantionWidget;

  @override
  State<DrawerItemTile> createState() => _DrawerItemTileState();
}

class _DrawerItemTileState extends State<DrawerItemTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      contentPadding: EdgeInsets.zero,
      dense: true,
      horizontalTitleGap: 0.0,
      minLeadingWidth: 0,
      minVerticalPadding: 0,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          backgroundColor: Colors.white,
          expandedAlignment: Alignment.centerLeft,
          tilePadding: EdgeInsets.zero,
          maintainState: false,
          onExpansionChanged: (value) {
            setState(() {
              isExpanded = value;
            });
          },
          title: DrawerItem(
            name: widget.name,
            leadingIcon: widget.leadingIcon,
            isSelected: isExpanded,
            // onTap: widget.onTap,
          ),
          trailing: const SizedBox(),
          children: widget.expantionWidget == null
              ? []
              : [
                  widget.expantionWidget!,
                ],
        ),
      ),
    );
  }
}
