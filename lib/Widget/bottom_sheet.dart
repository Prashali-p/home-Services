import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';


class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    Key? key,
    required BottomBarWithSheetController bottomBarController,
  }) : _bottomBarController = bottomBarController, super(key: key);

  final BottomBarWithSheetController _bottomBarController;

  @override
  Widget build(BuildContext context) {
    return BottomBarWithSheet(
      controller: _bottomBarController,
      bottomBarTheme: const BottomBarTheme(


        decoration: BoxDecoration(
          color: Colors.white,

        ),
        itemIconColor: Colors.grey,
        itemTextStyle: TextStyle(
          color: Colors.grey,
          fontSize: 10.0,
        ),
        selectedItemTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 10.0,
        ),
      ),
      onSelectItem: (index) => print(index),
      sheetChild: Center(
        child: Text(
          "Another content",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      items: [
        BottomBarWithSheetItem(icon: Icons.home,label: 'Home,'),
        BottomBarWithSheetItem(icon: Icons.card_giftcard,label: 'Home,'),
        BottomBarWithSheetItem(icon: Icons.settings,label: 'Home,'),
        BottomBarWithSheetItem(icon: Icons.favorite,label: 'Home,'),
      ],
    );
  }
}
