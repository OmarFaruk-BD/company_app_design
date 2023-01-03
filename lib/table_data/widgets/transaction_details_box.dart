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
          bottom: BorderSide(color: Color(0xFF10AB83)),
          right: BorderSide(color: Color(0xFF10AB83)),
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
              SizedBox(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        '\u09F3 $firstItemAmount',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          height: 1.8,
                        ),
                      ),
                    ),
                    const SizedBox(width: 26),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 15),
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
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
              SizedBox(
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text(
                        '\u09F3 $secondItemAmount',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          height: 1.8,
                        ),
                      ),
                    ),
                    const SizedBox(width: 26),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
