import 'package:flutter/material.dart';
class PhoneNumber extends StatelessWidget {
   PhoneNumber({Key? key}) : super(key: key);
Color color=Color(0xff6DA9E4);
String fontfam="Poppins";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Verify your phone number",style: TextStyle(color: color,fontWeight: FontWeight.w800,fontFamily: fontfam,fontSize: 20),),
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("We have send you OTP on this \nmobile number",style: TextStyle(fontSize: 14,fontFamily: fontfam),),
              const SizedBox(height: 30,),
              Text("Enter mobile no.*",style: TextStyle(fontSize: 14,fontFamily: fontfam,fontWeight: FontWeight.w500),),
              Row(
                children: [
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xffEEEEEE),fixedSize: Size(90, 40),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      onPressed: (){

                      },
                      icon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                      label: Text("+977",style: TextStyle(color: Colors.black),)),
                  const SizedBox(width: 15,),
                  SizedBox(
                    height: 50,
                    width: 225,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          filled: true,
                          fillColor: Color(0xffEEEEEE),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [

                  Text("Already have account?",style: TextStyle(fontFamily: fontfam,fontSize: 15),),
                  Text(" sign in",style: TextStyle(fontFamily: fontfam,fontSize: 15,color: Color(0xff3CCF4E)),),
                ],
              ),
              const SizedBox(height: 15,),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:color,fixedSize: Size(350, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                  onPressed: (){

                },
                    child: Text("Next",style: TextStyle(fontFamily: fontfam,fontSize: 20),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
