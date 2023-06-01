import 'package:flutter/material.dart';
import 'package:verification/screen/otp_screen.dart';
import 'package:get/get.dart';
import 'package:verification/screen/verify_phone_number.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OTP",
      home: PhoneNumber(),
    );
  }
}
