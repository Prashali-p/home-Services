import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/box_decoration.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:home_services_appui/Screen/otp_screen.dart';
import 'package:sizer/sizer.dart';

class LoginOldUser extends StatelessWidget {
  static const route = 'oldUser';
  const LoginOldUser({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 5.h,bottom: 7.h),
                  child: Text('Welcome Back!',style: TextConstant.welcomeback,),
                ),
              ],
            ),
          ),

          Container(
            margin:   EdgeInsets.only(bottom: 3.h),
            height: 7.h,
            width: 70.w,
            decoration: ContainerBoxDecoration.faceboook,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,color: Colors.white,),
                  Text(' CONTINUE WITH FACEBOOK',style: TextConstant.facebook,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:   EdgeInsets.only(bottom: 7.h),
            height: 7.h,
            width: 70.w,
            decoration: ContainerBoxDecoration.google,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,color: Colors.white,),
                  Text('CONTINUE WITH GOOGLE',style: TextConstant.googletext,
                  ),
                ],
              ),
            ),
          ),
          Text('OR CONTINUE WITH YOUR PHONE NUMBER',style: TextConstant.orcontinuewith,),
          Container(
              margin: EdgeInsets.only(top: 3.h,bottom: 3.h) ,
              height: 7.h,
              width: 60.w,
              decoration: ContainerBoxDecoration.loginContainermobile
          ),
          Container(
              height: 7.h,
              width: 60.w,
              child: Center(child: Text('LOG IN',style: TextConstant.firstPagetextsign,)),
              decoration: ContainerBoxDecoration.loginContainerbutton
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h,vertical: 3.h),
            child: Text('Forgot Password?',style: TextConstant.forgetPassword,),
          ),

          Padding(
            padding:EdgeInsets.only(top: 3.h,bottom: 3.h),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(OtpPage.route);
              },
              child: RichText(
                  text:TextSpan(
                  text: 'DONT HAVE AN ACCOUNT?',
                  style: TextConstant.alreadyaccount,
                  children: [
                    TextSpan( text: 'SIGN UP',
                      style: TextConstant.firstPagehaveaccount,)
                  ]
              )),
            ),
          ),



        ],
      ),
    );
  }
}
