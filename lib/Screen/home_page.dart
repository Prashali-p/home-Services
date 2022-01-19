import 'package:flutter/material.dart';
import 'package:home_services_appui/Constant/text_constant.dart';
import 'package:home_services_appui/Modal/top_page_views.dart';
import 'package:home_services_appui/Widget/bottom_sheet.dart';
import 'package:home_services_appui/Widget/grid_view.dart';
import 'package:home_services_appui/Widget/home_page_topwidget.dart';
import 'package:home_services_appui/Widget/home_top_location.dart';
import 'package:home_services_appui/Widget/popular_service.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:bottom_drawer/bottom_drawer.dart';

class HomePage extends StatefulWidget {
  static const route = 'home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bottomBarController = BottomBarWithSheetController(initialIndex: 0);
  @override
  void initState() {
    _bottomBarController.itemsStream.listen((i) {
      print('Index $i is selcted');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: TextConstant.backgroud,

      bottomNavigationBar: BottomSheetWidget(bottomBarController: _bottomBarController,),
      body: Column(
        children: [
          const HomeLocationWidget(),

          const HomePageTop(),
          Divider(height: 1.h,),
          const GridViewWidget(),
          Divider(height: 1.h,),
          const PopularServiceWidget(),
        ],
      ),
    );
  }

}








