import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderType extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(8),
          ),
          Text(
            'Order Type',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.local_shipping_outlined,
                size: 30,
                color: HexColor('#666565'),
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Text(
                'Home Delivery',
                style: TextStyle(color: Colors.black, fontSize: 17),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
        ],
      ),
    );
  }
}
