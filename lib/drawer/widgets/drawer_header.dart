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
      child: Stack(
        children: [
          Padding(
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
          _buildGradientContainer1(),
          _buildGradientContainer2(),
        ],
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

  Align _buildGradientContainer2() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 115,
        width: 90,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFC9ECE3).withOpacity(0.15),
              const Color(0xFF10AB83).withOpacity(0.15),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(90),
            bottomRight: Radius.circular(14),
          ),
        ),
      ),
    );
  }

  Align _buildGradientContainer1() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 115,
        width: 147,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFC9ECE3).withOpacity(.07),
              const Color(0xFF10AB83).withOpacity(.66),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80),
            bottomRight: Radius.circular(14),
          ),
        ),
      ),
    );
  }
}
