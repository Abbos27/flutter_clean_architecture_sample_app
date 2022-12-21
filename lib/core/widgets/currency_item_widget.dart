import 'dart:ffi';

import 'package:flutter/material.dart';

class CurrencyItemWidget extends StatelessWidget {
  const CurrencyItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double avatarRadius = 60;
    double horizontalPadding = 30;
    return SizedBox(
      height: 120,
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 12, horizontal: horizontalPadding),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: double.infinity,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: avatarRadius,
              height: avatarRadius,
              child: Center(child: CircleAvatar()),
            ),
          )
        ],
      ),
    );
  }
}
