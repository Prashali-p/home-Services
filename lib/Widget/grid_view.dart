import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:home_services_appui/Modal/top_page_views.dart';
import 'package:sizer/sizer.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(0.0),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.5/1,
            crossAxisCount: 3,
            crossAxisSpacing: 1.5,
            mainAxisSpacing: 1.5  ),
        itemBuilder: (context,index)=>Container(
          color:TextConstant.containerColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage(Product.product1[index].image),),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(Product.product1[index].title,style: TextConstant.homeservice,),
              )
            ],
          ),
        ) );
  }
}