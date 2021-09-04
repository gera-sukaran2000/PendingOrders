import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class deliveryAddress extends StatelessWidget {
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: [
            Icon(
              Icons.place_outlined,
              size: 30,
              color: HexColor('#2ECC71'),
            ),
          ]),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(5)),
              Text(
                'Delivery Address',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: getProportionateScreenHeight(9),
              ),
              Text(
                'Mriganka Baruah',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.5),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                'House no 15\nNear Greenland\nNorth lakhimpur\nAssam\nIndia\n+911234567890',
                style: TextStyle(color: Colors.black, fontSize: 15.25),
              ),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(50),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              Container(
                width: getProportionateScreenWidth(72),
                height: getProportionateScreenHeight(30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor('#E4E4E4')),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          )
        ],
      ),
    );

    // return Container(
    //   margin: EdgeInsets.only(left: 28),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           Icon(
    //             Icons.place_outlined,
    //             size: 30,
    //             color: HexColor('#2ECC71'),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         width: getProportionateScreenWidth(15),
    //       ),
    //       Column(
    //         children: [
    //           Text(
    //             'Delvery Address',
    //             style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 16,
    //                 fontWeight: FontWeight.w600),
    //           ),
    //           SizedBox(
    //             height: getProportionateScreenHeight(7),
    //           ),
    //           Text(
    //             'Mriganka Baruah',
    //             style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.5),
    //           ),
    //           SizedBox(
    //             height: getProportionateScreenHeight(10),
    //           ),
    //           Text(
    //             'House no 15\nNear Greenland\nNorth lakhimpur\nAssam\nIndia\n+911234567890',
    //             style: TextStyle(color: Colors.black),
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
