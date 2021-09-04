import 'package:flutter/material.dart';

class SubTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double getProportionateScreenHeight(double inputHeight) {
      double screenHeight = MediaQuery.of(context).size.height;
      return (inputHeight / 812.0) * screenHeight;
    }

    double getProportionateScreenWidth(double inputWidth) {
      double screenWidth = MediaQuery.of(context).size.width;
      return (inputWidth / 375.0) * screenWidth;
    }

    return Container(
        margin: EdgeInsets.only(left: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Details',
              style: TextStyle(
                  fontSize: 16.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(
                          fontSize: 15.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(150),
                    ),
                    Text('\$999',
                        style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(2),
                ),
                Row(
                  children: [
                    Text(
                      'Shipping Cost',
                      style: TextStyle(
                          fontSize: 15.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(120),
                    ),
                    Text('\$25',
                        style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: getProportionateScreenHeight(25),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Row(
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                          fontSize: 15.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(168),
                    ),
                    Text(
                      '\$1048',
                      style: TextStyle(
                          fontSize: 15.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
