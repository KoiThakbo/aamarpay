import 'package:flutter/material.dart';
import 'package:aamarpay/aamarpay.dart';

void main() {
  runApp(MaterialApp(
    home: MyPay(),
  ));
}

class MyPay extends StatefulWidget {
  @override
  _MyPayState createState() => _MyPayState();
}

class _MyPayState extends State<MyPay> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: aamarpayData(
            returnUrl: (url) {
              print(url);
            },
            isLoading: (v) {
              setState(() {
                isLoading = v;
              });
            },
            paymentStatus: (status) {
              print(status);
            },
            cancelUrl: "example.com/payment/cancel",
            successUrl: "example.com/payment/confirm",
            failUrl: "example.com/payment/fail",
            customerEmail: "masum@test.com",
            customerMobile: "01834760591",
            customerName: "Masum Billah Sanjid",
            signature: "",
            storeID: "",
            transactionAmount: "100",
            transactionID: "sfasg",
            description: "asgsg",
            url: "",
            child: isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    color: Colors.orange,
                    height: 50,
                    child: Center(
                        child: Text(
                      "Payment",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                  )),
      ),
    );
  }
}
