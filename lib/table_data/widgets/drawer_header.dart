import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Color(0xFF10AB83),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 16, top: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildCrossButton(context),
            const SizedBox(height: 40),
            _buildHeaderText(),
          ],
        ),
      ),
    );
  }

  Text _buildHeaderText() {
    return const Text(
      'Demo Limited Company',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 2.2,
      ),
    );
  }

  InkWell _buildCrossButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Text(
        String.fromCharCode(Icons.close.codePoint),
        style: TextStyle(
          inherit: false,
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: Icons.close.fontFamily,
          package: Icons.close.fontPackage,
        ),
      ),
    );
  }
}
