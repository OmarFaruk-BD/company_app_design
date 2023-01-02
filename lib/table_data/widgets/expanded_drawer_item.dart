import 'package:demo_limited_company_app/table_data/widgets/drawer_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedDrawerItemTile extends StatefulWidget {
  const ExpandedDrawerItemTile({super.key});

  @override
  State<ExpandedDrawerItemTile> createState() => _ExpandedDrawerItemTileState();
}

class _ExpandedDrawerItemTileState extends State<ExpandedDrawerItemTile> {
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
          onExpansionChanged: (value) {
            setState(() {
              isExpanded = value;
            });
          },
          title: DrawerItem(isSelected: isExpanded),
          trailing: Container(
            height: 40,
            color: isExpanded ? const Color(0xFFC9ECE3) : Colors.white,
            child: Icon(
              isExpanded
                  ? CupertinoIcons.chevron_up
                  : CupertinoIcons.chevron_down,
              color: isExpanded
                  ? const Color(0xFF10AB83)
                  : Colors.black.withOpacity(0.6),
              size: 16,
            ),
          ),
          tilePadding: EdgeInsets.zero,
          maintainState: true,
          children: const [
            ListTile(
              title: Text(
                'items.description',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
