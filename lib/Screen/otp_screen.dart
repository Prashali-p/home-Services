import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/box_decoration.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:home_services_appui/Screen/add_new_address_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';


class OtpPage extends StatelessWidget {
  static const route = 'otp';
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:TextConstant.containerColor ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:TextConstant.containerColor ,
        iconTheme:IconThemeData(color: TextConstant.backarrow) ,
      ),
       body: Column(
         children: [
           Center(
             child: SizedBox(
                 height: 30.h,
                 width: 40.w,
                 child: Image(image: AssetImage('images/otp.png'),fit: BoxFit.cover,)),
           ),
           Padding(
             padding:EdgeInsets.only(top: 10.h,bottom: 3.h),
             child: Text('OTP Verification',style: TextConstant.otpVerify,),
           ),
           Padding(
             padding:EdgeInsets.only(bottom: 3.h),
             child: RichText(text:TextSpan(
               text: 'Enter the OTP sent to',
               style: TextConstant.enterOtp,
               children: [
                 TextSpan( text: '+91234567889',
                   style: TextConstant.enterOtp,)
               ]
             )),
           ),
           VerificationCode(
             length: 4,
               underlineColor: TextConstant.optbar,
               fillColor: TextConstant.optbar,
               onCompleted: (value){},
               onEditing: (value){}),
           Padding(
             padding:EdgeInsets.only(top: 3.h,bottom: 3.h),
             child: RichText(text:TextSpan(
                 text: 'OTP not received?  ',
                 style: TextConstant.otpNotRec,
                 children: [
                   TextSpan( text: 'RESEND OTP',
                     style: TextConstant.firstPagehaveaccount,)
                 ]
             )),
           ),
           GestureDetector(
             onTap: (){
               Navigator.of(context).pushNamed(AddNewAddress.route);
             },
             child: Container(
               margin:  EdgeInsets.only(top: 3.h),
                 height: 7.h,
                 width: 60.w,
                 child: Center(child: Text('VERIFY & PROCEED',style: TextConstant.firstPagetextsign,)),
                 decoration: ContainerBoxDecoration.loginContainerbutton
             ),
           ),

         ],
       ),
    );
  }
}
