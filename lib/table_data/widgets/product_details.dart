import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Test product 01',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                height: 1.8,
              ),
            ),
            SizedBox(width: 4),
            Text(
              '100 pcs x 50',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                height: 1.8,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          color: Colors.green,
          height: 55,
          width: 1,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 26, right: 15),
          child: Text(
            '70000',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              height: 1.8,
            ),
          ),
        ),
      ],
    );
  }
}
