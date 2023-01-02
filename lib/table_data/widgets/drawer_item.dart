// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({
    Key? key,
    this.name = 'Purchase',
    this.leadingIcon = Icons.shopping_cart,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String name;
  final IconData leadingIcon;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          color: isSelected ? const Color(0xFFC9ECE3) : Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Row(
            children: [
              Icon(
                leadingIcon,
                color: isSelected
                    ? const Color(0xFF10AB83)
                    : Colors.black.withOpacity(0.6),
                size: 16,
              ),
              const SizedBox(width: 18),
              Text(
                name,
                style: TextStyle(
                  color: isSelected
                      ? const Color(0xFF10AB83)
                      : Colors.black.withOpacity(0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                isSelected
                    ? CupertinoIcons.chevron_up
                    : CupertinoIcons.chevron_down,
                color: isSelected
                    ? const Color(0xFF10AB83)
                    : Colors.black.withOpacity(0.6),
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
