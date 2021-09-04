import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:productform/widgets/Buttons.dart';
import 'package:productform/widgets/DeliveryAddress.dart';
import 'package:productform/widgets/orderDetails.dart';
import 'package:productform/widgets/ordertype.dart';
import 'package:productform/widgets/paymentMethod.dart';
import 'package:productform/widgets/subTotal.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'ORDER ID 656JH20210713',
                  style: TextStyle(
                      color: HexColor('#000000'),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            OrderDetails(),
            Divider(
              color: HexColor('#8B8989'),
              thickness: 0.85,
              indent: 28,
              endIndent: 28,
            ),
            OrderType(),
            Divider(
              color: HexColor('#8B8989'),
              thickness: 0.85,
              indent: 28,
              endIndent: 28,
            ),
            SizedBox(
              height: 5,
            ),
            deliveryAddress(),
            SizedBox(
              height: 5,
            ),
            PaymentMethod(),
            Divider(
              color: HexColor('#8B8989'),
              thickness: 0.85,
              indent: 28,
              endIndent: 28,
            ),
            SizedBox(
              height: 5,
            ),
            SubTotal(),
            SizedBox(
              height: 30,
            ),
            CheckoutButtons(),
          ],
        ),
      ),
    );
  }
}
