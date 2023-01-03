import 'package:flutter/material.dart';

class ExpandedItems extends StatelessWidget {
  const ExpandedItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          const SizedBox(width: 24),
          Container(
            color: const Color(0xFFC9ECE3),
            width: 1,
          ),
          const SizedBox(width: 36),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExpandedItemName(
                'Purchase List',
              ),
              _buildExpandedItemName(
                'Order List',
              ),
              _buildExpandedItemName(
                'VAT List',
              ),
              _buildExpandedItemName(
                'Product Unit',
              ),
              _buildExpandedItemName(
                'Purchase Report',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Text _buildExpandedItemName(String name) {
    return Text(
      name,
      style: const TextStyle(
        color: Color(0xFF10AB83),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
