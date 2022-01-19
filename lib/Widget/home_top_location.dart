import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:sizer/sizer.dart';

class HomeLocationWidget extends StatelessWidget {
  const HomeLocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      color: TextConstant.containerColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.h,left: 3.w),
            child: Row(children: [

              const Icon(Icons.location_on_outlined),
              Text('Home',style: TextConstant.home,),
              const Icon(Icons.arrow_drop_down),
              SizedBox(width: 70.w,),
              Icon(Icons.search)
            ],),
          )
        ],
      ),
    );
  }
}