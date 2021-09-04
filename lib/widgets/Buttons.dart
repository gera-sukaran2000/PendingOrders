import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CheckoutButtons extends StatelessWidget {
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
      child: Row(children: [
        SizedBox(
          width: getProportionateScreenWidth(15),
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: HexColor('#2ECC71')),
          width: getProportionateScreenWidth(122),
          height: getProportionateScreenHeight(45),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Accept',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(40),
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: HexColor('#E22020')),
          width: getProportionateScreenWidth(122),
          height: getProportionateScreenHeight(45),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Reject',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ]),
    );
  }
}
