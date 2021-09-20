import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/main.dart';
import 'UsersList.dart';
import 'QuestionList.dart';
import 'Requests.dart';
import 'farsiNumber.dart';

class DideBan extends StatefulWidget {
  const DideBan({Key? key}) : super(key: key);

  @override
  _DideBanState createState() => _DideBanState();
}

class _DideBanState extends State<DideBan> {
 Farsi _farsi=new Farsi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height/12.35,
        backgroundColor: Colors.white,
        actions: [
          Container(
            // height: MediaQuery.of(context).size.height/10,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width/15.0,
                right: MediaQuery.of(context).size.width/15.0,
                // top: MediaQuery.of(context).size.height/30,
                // bottom: MediaQuery.of(context).size.height/120,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'دیده بان',
                    style: TextStyle(
                      color: HexColor('252525'),
                      fontSize: MediaQuery.of(context).size.width/22.5,
                      fontFamily: 'IranianSans',
                    ),
                  ),


              Container(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DideBan()));
                  },
                  child: Row(
                    children: <Widget>[
                      Text('تنظیمات ',
                        style: TextStyle(
                          color: HexColor('246DFF'),
                          fontFamily: 'IranianSans',
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width/22.5,
                        ),
                      ),
                      SvgPicture.asset('assets/settings_black_24dp.svg',
                        height: MediaQuery.of(context).size.height/30,
                        width: MediaQuery.of(context).size.width/15,
                      ),
                    ],
                  ),
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
          // SizedBox(height: 4.0,),
          Container(
            // color: Colors.red,
            height: (MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/12.35)/2.15,
            child: Column(
              // scrollDirection: Axis.vertical,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height/150,),
                Padding(padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width/15,
                    right: MediaQuery.of(context).size.width/15),
                  child: Container(
                    child: generateItem('تعداد کاربران',888,'تعداد سوالات',666),
                  ),),


                  SizedBox(height: MediaQuery.of(context).size.height/30),
                  Padding(padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width/15,
                      right: MediaQuery.of(context).size.width/15),
                  child: Container(
                    child: generateItem('همه درخواست ها',256,'حل شده',254),
                  ),),

                SizedBox(height: MediaQuery.of(context).size.height/30,),
                   Padding(padding: EdgeInsets.only(
                       left: MediaQuery.of(context).size.width/15,
                       right: MediaQuery.of(context).size.width/15),
                   child:  Container(
                     child: generateItem('درحال برسی',213,'لغو شده',108),
                  ),
                ),
            ],
          ),
          ),
          Expanded(
              child: Padding(padding: EdgeInsets.only(
                // left: (MediaQuery.of(context).size.width-301)/3,
                // right: MediaQuery.of(context).size.width/6,
                right: MediaQuery.of(context).size.width/15,
                // left: MediaQuery.of(context).size.width/6,
                left: MediaQuery.of(context).size.width/15,

                // right: (MediaQuery.of(context).size.width-301)/3,
                // left: 24.0,right: 24.0
              ),

                child: Container(
                  // color: Colors.green,
                  // height: (MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/12.35)/2,
                  // height: (MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/12.35)-((MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/12.35)/2),
                  // height: ((MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/12.35)*3)/5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                      SizedBox(height: MediaQuery.of(context).size.height/100000,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildItems('assets/people_black_24dp.svg', 'لیست کاربران',usersList()),
                          // SizedBox(width: (MediaQuery.of(context).size.width-334)/3),
                          // SizedBox(width: (MediaQuery.of(context).size.width-309)/2,),
                          // SizedBox(width: 16.0,),
                          buildItems('assets/quiz_black_24dp.svg', 'لیست سوالات',QuestionList()),
                        ],
                      ),
                      // SizedBox(height: (MediaQuery.of(context).size.height-323-330)/3),
                      // SizedBox(height: MediaQuery.of(context).size.height/30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildItems('assets/request_page_black_24dp.svg', 'درخواست ها',Requests()),
                          // SizedBox(width: 16.0,),
                          buildItems('assets/manage_accounts_black_24dp.svg', 'تنظیمات',DideBan()),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/1000,),
                    ],
                  ),
                ),),
          )
        ],
      ),
    );
  }

  Material generateItem(String rtTxt,int rtNunmber,String ltTxt,int ltNumber){
    return Material(
      color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              // height: 68.0,
              height: (MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/12.35)/8.25,
              width: MediaQuery.of(context).size.width/2-(MediaQuery.of(context).size.width/15+1),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    rtTxt,
                    style: TextStyle(
                      // fontSize: 16,
                      fontSize: MediaQuery.of(context).size.width/22.5,
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    _farsi.replaceFarsiNumber(rtNunmber.toString()),
                    style: TextStyle(
                      // fontSize: 18.0,
                      fontSize: MediaQuery.of(context).size.width/20.0,
                      color: HexColor('252525'),
                      fontFamily: 'IranianSans',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
            Container(
              child: Divider(
                // height: 40.0,
                height: (MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/12.35)/14,
                thickness: 0.2,
                color: HexColor('585858'),
                indent: 0.2,
                endIndent: 0.2,
              ),
              color: Colors.black,
            ),
            Container(
              // height: 68.0,
              height: (MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/12.35)/8.25,
              width: MediaQuery.of(context).size.width/2-(MediaQuery.of(context).size.width/15+1),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   Text(
                       ltTxt,
                     style: TextStyle(
                       fontSize: MediaQuery.of(context).size.width/22.5,
                       color: HexColor('585858'),
                       fontFamily: 'IranianSans',
                     ),
                     textAlign: TextAlign.center,
                    ),
                    Text(
                      _farsi.replaceFarsiNumber(ltNumber.toString()),
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/20.0,
                        color: HexColor('252525'),
                        fontFamily: 'IranianSans',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(8.0),
          ),
      ),
      elevation: 10,
      shadowColor: HexColor('40246DFF'),
    );}

    Card buildItems(String svgPath,String txt,Widget widget){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
        color: HexColor('FAFAFA'),
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => widget));
          },
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3.0,color: HexColor('246DFF')),
                  borderRadius: BorderRadius.circular(8.0)
              ),

              // height: 148,
              // width: 148,
              height: (MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height/12.35))/4.5,
              width: (MediaQuery.of(context).size.width)/2.5,
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                    SvgPicture.asset(svgPath,
                      height: (MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height/12.35))/10,
                      width: (MediaQuery.of(context).size.width)/5,),
                    SizedBox(height: MediaQuery.of(context).size.height/120),
                    Text(txt,
                      style: TextStyle(
                        fontFamily: 'IranianSans',
                        fontStyle: FontStyle.normal,
                        // fontSize: 20.0,
                        fontSize: (MediaQuery.of(context).size.width)/18,
                        color: HexColor('252525'),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
          ),
        )
    );
    }

  }

