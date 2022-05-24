import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class ButtonNavigationBar extends StatelessWidget {

  String _titleOfButtonNavigation;


  ButtonNavigationBar(this._titleOfButtonNavigation);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: HexColor('246DFF'),
      child: Container(
        height: MediaQuery.of(context).size.height/15.75,

        child: Container(
            width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/15.75,
            child: Center(
              child: Text(
              _titleOfButtonNavigation,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/22.5,
                  fontFamily: 'IranianSans',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
