import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:verification/controller/timer_controller.dart';
import 'package:get/get.dart';
class OtpScreen extends StatelessWidget {
   OtpScreen({Key? key}) : super(key: key);
  TextEditingController pinController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    const String phoneNo="+9779846665888";
    int time=3;
    String fontfam="Poppins";
    TimerController timerController=Get.put(TimerController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:  Text("OTP Verification",style: TextStyle(color: Color(0xff6DA9E4),
              fontSize: 25,fontFamily: fontfam,fontWeight:FontWeight.w800 ),),
          centerTitle: true,
            elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Enter the code from the sms we sent",style: TextStyle(fontFamily: fontfam),),
                    Row(
                      children: [
                        Text("to ",style: TextStyle(fontFamily: fontfam),),
                        Text(phoneNo,style: TextStyle(fontWeight: FontWeight.w800,fontFamily: fontfam),)
                      ],
                    ),

                  ],
                ),

              ],
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text(timerController.timerText,style: TextStyle(fontSize: 25,fontFamily: fontfam,color: Color(0xff6DA9E4)),),
                ),
              ],
            ),
            const SizedBox(height: 20,),

            Pinput(
              controller: pinController,
              length: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              defaultPinTheme: PinTheme(
                height: 50,
                width: 50,
                textStyle: TextStyle(fontSize: 30,fontFamily: fontfam),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  border: Border.all(color: Colors.black)
                )
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I didn't receive any code.",style: TextStyle(fontFamily: fontfam),),
                GestureDetector(child: Text(" Resend",style: TextStyle(fontFamily: fontfam,color: Color(0xff6DA9E4),fontWeight: FontWeight.w700),),
                onTap: (){
                  timerController.resetTimer();
                  clearInput();
                },
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Text("The OTP will expire in ${time} minutes",style: TextStyle(fontFamily: fontfam,fontWeight: FontWeight.w800),),
            const SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff6DA9E4),
                  fixedSize: Size(340, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
              onPressed: (){
              
            },
                child: Text("Submit",style: TextStyle(fontSize: 25,fontFamily: fontfam,fontWeight: FontWeight.w800),),
            ),
          ],
        ),
      ),
    );
  }
   void clearInput()
   {
      pinController.clear();
   }
}
