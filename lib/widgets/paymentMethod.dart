import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class PaymentMethod extends StatelessWidget {
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
            height: getProportionateScreenHeight(15),
          ),
          Text(
            'Payment Method',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(40),
                child: AspectRatio(
                  aspectRatio: 0.90,
                  child: Container(
                    child: Image.asset('assets/images/visa.png'),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
              Text(
                '**** **** **** 4321',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.25,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
        ],
      ),
    );
  }
}
