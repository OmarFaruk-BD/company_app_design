import 'package:flutter/material.dart';

class TransactionDoubleItemBox extends StatelessWidget {
  const TransactionDoubleItemBox({
    Key? key,
    required this.firstItemName,
    required this.firstItemAmount,
    required this.secondItemName,
    required this.secondItemAmount,
  }) : super(key: key);

  final String firstItemName;
  final String firstItemAmount;
  final String secondItemName;
  final String secondItemAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFF10AB83)),
          bottom: BorderSide(color: Color(0xFF10AB83)),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 15),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  firstItemName,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.8,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                color: Colors.green,
                height: 32,
                width: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26, right: 15),
                child: Text(
                  firstItemAmount,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.8,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 15),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  secondItemName,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.8,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                color: Colors.green,
                height: 32,
                width: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26, right: 15),
                child: Text(
                  secondItemAmount,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.8,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
