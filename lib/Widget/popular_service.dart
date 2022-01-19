import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:home_services_appui/Modal/top_page_views.dart';
import 'package:sizer/sizer.dart';
class PopularServiceWidget extends StatelessWidget {
  const PopularServiceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 20.h,
        color: TextConstant.containerColor,

        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Popular Services',style: TextConstant.popularservice,),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 4.w,right: 2.w,top: 2.h),
                  itemCount: Product.product2.length,
                  itemBuilder: (context,index)=>
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 4.w),
                              height: 15.h,
                              child: Image(image: AssetImage(Product.product2[index].image,),fit: BoxFit.contain,)),
                          Text(Product.product2[index].title,style: TextConstant.kitchenservice)
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}