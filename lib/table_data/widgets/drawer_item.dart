// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({
    Key? key,
    this.name = 'Purchase',
    this.leadingIcon = Icons.shopping_cart,
    this.trailingIcon = CupertinoIcons.chevron_down,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String name;
  final IconData leadingIcon;
  final IconData trailingIcon;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
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
                trailingIcon,
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
