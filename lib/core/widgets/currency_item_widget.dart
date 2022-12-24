import 'dart:ffi';

import 'package:currency_app/features/exchange_rates/data/models/currency.dart';
import 'package:flutter/material.dart';

class CurrencyItemWidget extends StatelessWidget {
  final Currency? currency;

  const CurrencyItemWidget({Key? key, this.currency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double avatarRadius = 50;
    double horizontalPadding = 25;
    return SizedBox(
      height: 100,
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 4,
                  bottom: 8,
                  right: horizontalPadding,
                  left: horizontalPadding),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        currency?.nominal ?? "",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "${currency?.nominal} = ${currency?.rate}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      Text(
                        "Updated at : ${currency?.date} | 19:55",
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: avatarRadius,
              height: avatarRadius,
              child: Center(
                child: CircleAvatar(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
