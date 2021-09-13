import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class ButtonNavigationBar extends StatelessWidget {
  const ButtonNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: HexColor('246DFF'),
      child: Container(
        height: 44.0,
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 44.0,
            child: Center(
              child: Text(
                "افزودن",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'IranianSans',
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
