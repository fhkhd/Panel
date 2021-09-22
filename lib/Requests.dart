import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'farsiNumber.dart';
import 'DideBan.dart';
import 'package:url_launcher/url_launcher.dart';


class Requests extends StatefulWidget {
  const Requests({Key? key}) : super(key: key);

  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {

  Farsi _farsi=new Farsi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height/12.35,
        backgroundColor: Colors.white,
        actions: [
          Container(
            // height: MediaQuery.of(context).size.height/10,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width/15,
                right: MediaQuery.of(context).size.width/15,
                // top: MediaQuery.of(context).size.height/30,
                // bottom: MediaQuery.of(context).size.height/120,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'لیست درخواست های کاربران',
                    style: TextStyle(
                      color: HexColor('252525'),
                      fontSize: MediaQuery.of(context).size.width/22.5,
                      // fontSize: 16.0,
                      fontFamily: 'IranianSans',
                    ),
                    textAlign: TextAlign.right,
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DideBan()));
                    },
                    child: SvgPicture.asset('assets/forward_black_24dp.svg',
                      height: MediaQuery.of(context).size.height/23,
                      // height: 30,
                      // width: 30,
                      width: MediaQuery.of(context).size.width/7,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [

          Expanded(
            child: Container(
            height: (MediaQuery.of(context).size.height)-(MediaQuery.of(context).size.height/5),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => itemRequest(),
              itemCount: 5,
            ),
          ),)
        ],
      ),
    );
  }


  Material Request(){
    return Material(
      color: HexColor('FFFFFF'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Container(
        // height: 150.0,
        width: MediaQuery.of(context).size.width-(2*(MediaQuery.of(context).size.width/15)),
        child: Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width/30,
            top: MediaQuery.of(context).size.height/87,
            // top: 8.0,
            bottom: MediaQuery.of(context).size.height/87,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'نام درخواست دهنده:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      // fontSize: 14.0,
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  // SizedBox(width: 4.0),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),

                  Text(
                    'محمد خواستار',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      color: HexColor('252525'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 8.0,),
              SizedBox(height: MediaQuery.of(context).size.height/87,),
              Row(
                children: [
                  Text(
                    'وضعیت درخواست:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    'درحال برسی',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      color: HexColor('252525'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/87,),
              Row(
                children: [
                  Text(
                    'آدرس:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    _farsi.replaceFarsiNumber('قم،آزادگان،خیابان نواب،کوچه16'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      fontWeight: FontWeight.w500,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 19.0,),
              SizedBox(height: MediaQuery.of(context).size.height/87,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap:  () => launch("tel://21213123123"),
                      child: Row(
                      children: <Widget>[
                        Text('تماس',
                         style: TextStyle(
                           fontSize: MediaQuery.of(context).size.width/25.75,
                           fontFamily: 'IranianSans',
                           fontWeight: FontWeight.w400,
                           color: HexColor('246DFF'),
                  ),
                  textAlign: TextAlign.right,
                ),
                SvgPicture.asset('assets/local_phone_black_24dp.svg',
                  // width: 18.0,
                  width: MediaQuery.of(context).size.width/20.0,
                  // height: 18.0,
                  height: MediaQuery.of(context).size.height/38,
                )
                ],
              ),),
                    InkWell(
                      onTap: () => launch("sms://21213123123"),
                      child: Padding(padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width/30),
                        child: Row(
                          children: <Widget>[
                            Text('پیام',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width/25.75,
                                fontFamily: 'IranianSans',
                                fontWeight: FontWeight.w400,
                                color: HexColor('246DFF'),
                              ),
                              textAlign: TextAlign.right,
                            ),
                            SvgPicture.asset('assets/chat_black_24dp.svg',
                              width: MediaQuery.of(context).size.width/18.75,
                              // height: 20.0,
                              height: MediaQuery.of(context).size.height/35,
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
      // elevation: 8.0,
      // shadowColor: HexColor('40246DFF'),
    );
  }

  Widget itemRequest(){
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width/15,
          right: MediaQuery.of(context).size.width/15,
          // top: 10.0,
          top: MediaQuery.of(context).size.height/67,
        ),
          child: Container(
            child: Request(),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(36, 109, 255, 0.25),
                  // spreadRadius: 1/10000,
                  blurRadius: 8,
                  offset: Offset(0,4),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/49,
        ),
      ],
    );
  }


}
