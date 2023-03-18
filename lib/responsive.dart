import 'package:flutter/material.dart';
import 'mobile.dart';
import 'desktop.dart';

class Responsive extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  Responsive({required this.mobileBody,required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context , constraints){
        if(width<500){
          return mobileBody;
        }else{
          return desktopBody;
        }
      }
      );
  }
}