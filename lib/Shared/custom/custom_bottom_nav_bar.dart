import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:liveclinic/Shared/style/colors.dart';

ConvexAppBar bottomBar(){
  return ConvexAppBar.badge(
    const {4:""},
    items: [
      const  TabItem(icon: Icon(Icons.home_filled,size: 30,),title: "Home",isIconBlend: true),
      TabItem(icon:Image.asset('assets/images/bot.png',),title: 'Chat',isIconBlend: true ),
      const TabItem(icon:Icon(Icons.notifications_none,size: 30,),title: "Notifications",isIconBlend: true),
      const TabItem(icon: Icon(Icons.search,size: 30,),title: "Search",isIconBlend: true),
    ],
    style: TabStyle.reactCircle,
    activeColor: clr(1),
    backgroundColor: clr(5),
    color:clr(6),
    curveSize: 100,
    top: -15,
    onTap:(index) {},
    height: 70,

  );
}