import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:home_services_appui/Modal/top_page_views.dart';
import 'package:sizer/sizer.dart';

class HomePageTop extends StatelessWidget {
  const HomePageTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      color: TextConstant.containerColor,
      child: PageView.builder(
        itemCount: Product.productImage.length,
        itemBuilder: (BuildContext context, int index) {
          return  Product.productImage[index];
        },),
    );
  }
}