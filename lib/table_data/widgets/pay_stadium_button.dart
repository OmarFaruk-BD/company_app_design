import 'package:flutter/material.dart';

class PayStadiumButton extends StatelessWidget {
  const PayStadiumButton({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 48,
        decoration: const BoxDecoration(
          color: Color(0xFF10AB83),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIcon(),
            const SizedBox(width: 10),
            _buildText(),
          ],
        ),
      ),
    );
  }

  Text _buildText() {
    return const Text(
      'Pay the balance',
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Container _buildIcon() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.67)),
      ),
      child: const Icon(
        Icons.add,
        color: Color(0xFF10AB83),
      ),
    );
  }
}
