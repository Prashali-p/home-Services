import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/box_decoration.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:home_services_appui/Screen/login_old_user_screen.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  static const route = 'loginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:TextConstant.containerColor ,
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
              width: double.infinity,
              child: Image(image: AssetImage('images/girl.png'),fit: BoxFit.cover,)),
          Center(
            child: Column(
              children: [
                Center(child: Text('Your Home services Expert',style: TextConstant.firstPage,)),
              ],
            ),
          ),
          Text('Continue with your Phone Number',style: TextConstant.firstPagetext2,),
          Container(
            margin: EdgeInsets.only(top: 3.h,bottom: 3.h) ,
            height: 7.h,
            width: 60.w,
            decoration: ContainerBoxDecoration.loginContainermobile
          ),
      Container(
          height: 7.h,
          width: 60.w,
          child: Center(child: Text('SIGN UP',style: TextConstant.firstPagetextsign,)),
          decoration: ContainerBoxDecoration.loginContainerbutton
      ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h,vertical: 3.h),
            child: Text('VIEW OTHER OPTIONS',style: TextConstant.firstPageviewother,),
          ),

      GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(LoginOldUser.route);
        },
        child: RichText(
            text:TextSpan(
                text: 'ALREADY HAVE AN ACCOUNT?',
                style: TextConstant.firstPagetext2,
                children: [
                  TextSpan( text: 'LOG IN',
                    style: TextConstant.firstPagehaveaccount,)
                ]
            )),
      )],
      ),
    );
  }
}
