import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/box_decoration.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:sizer/sizer.dart';

import 'home_page.dart';

class AddNewAddress extends StatelessWidget {
  static const route = 'address';
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:TextConstant.containerColor ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:TextConstant.containerColor ,
        iconTheme:IconThemeData(color: TextConstant.containerColor ) ,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 7.h),
              child: Text('Hey,nice to meet you!',style: TextConstant.heytext,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3.h,bottom: 3.h),
              child: Text('See Services Around',style: TextConstant.seeService,),
            ),
            SizedBox(
                height: 30.h,
                width: 70.w,
                child: Image(image: AssetImage('images/place.png'),fit: BoxFit.contain,)),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacementNamed(  HomePage.route);
              },
              child: Container(
                  margin:  EdgeInsets.only(top: 7.h),
                  height: 7.h,
                  width: 70.w,
                  child: Center(
                      child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.my_location,color: Colors.white,size: 15,),
                      Text('  Your current Location',style: TextConstant.firstPagetextsign,),
                    ],
                  )),
                  decoration: ContainerBoxDecoration.loginContainerbutton
              ),
            ),
            Container(
                margin:  EdgeInsets.only(top: 2.h),
                height: 7.h,
                width: 70.w,
                child: Center(
                    child:
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.search,color: Color(0xffA1A4B2),),
                        Text('Some new Location',style: TextConstant.location,),
                      ],
                    )),
                decoration: ContainerBoxDecoration.someotherlocation
            ),


          ],
        ),
      ),
    );
  }
}
