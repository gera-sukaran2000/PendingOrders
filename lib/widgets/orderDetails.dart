import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderDetails extends StatelessWidget {
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
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(25),
          ),
          Column(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(105),
                child: AspectRatio(
                  aspectRatio: 0.85,
                  child: Container(
                    child: Image.asset('assets/images/Phone.png'),
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: getProportionateScreenWidth(30)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Apple iphone 12',
                style: TextStyle(
                    color: HexColor('#000000'),
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Text('\$999\nRed',
                  style: TextStyle(fontSize: 16, color: HexColor('#666565'))),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Row(
                children: [
                  Text('Quantity',
                      style:
                          TextStyle(fontSize: 16, color: HexColor('#666565'))),
                  SizedBox(
                    width: getProportionateScreenWidth(30),
                  ),
                  Text('1',
                      style: TextStyle(
                          color: HexColor('#000000'),
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                ],
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(35),
          ),
        ],
      ),
    );
  }
}
