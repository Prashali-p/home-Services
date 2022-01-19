import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/text_constant.dart';


class ContainerBoxDecoration{

  static BoxDecoration loginContainermobile = BoxDecoration(
    color: TextConstant.loginMobile,
    borderRadius: BorderRadius.circular(20)
  );

  static BoxDecoration loginContainerbutton = BoxDecoration(
      color: TextConstant.loginsignup,
      borderRadius: BorderRadius.circular(50)
  );
  static BoxDecoration faceboook = BoxDecoration(
      color: TextConstant.facebookin,
      borderRadius: BorderRadius.circular(50)
  );

  static BoxDecoration google = BoxDecoration(

      borderRadius: BorderRadius.circular(50),
      border: Border.all(
        color: TextConstant.google,

      ));
  static BoxDecoration someotherlocation = BoxDecoration(

      borderRadius: BorderRadius.circular(50),
      border: Border.all(
        color: TextConstant.somelocation

      ));


}