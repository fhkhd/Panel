import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/main.dart';
import 'UsersList.dart';
import 'QuestionList.dart';
import 'Requests.dart';

class DideBan extends StatefulWidget {
  const DideBan({Key? key}) : super(key: key);

  @override
  _DideBanState createState() => _DideBanState();
}

class _DideBanState extends State<DideBan> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: ListView(
        children: [
          SizedBox(height: 12.0),
          Padding(padding: EdgeInsets.only(left: 24.0,right: 24.0,bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'دیده‌بان',
                  style: TextStyle(
                    color: HexColor('252525'),
                    fontSize: 16.0,
                    fontFamily: 'IranianSans',
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('تنظیمات',
                        style: TextStyle(
                          color: HexColor('246DFF'),
                          fontFamily: 'IranianSans',
                          fontSize: 16.0,
                        ),
                      ),
                      SvgPicture.asset('assets/settings_black_24dp.svg',color: HexColor('3075FF'),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.0,),
          Container(
            height: 275.0,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                SizedBox(height: 10.0),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: generateItem(),
                  ),),


                  SizedBox(height: 24.0),
                  Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: generateItem(),
                  ),),

                SizedBox(height: 24.0),
                   Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                   child:  Container(
                    child: generateItem(),
                  ),
                ),
            ],
          ),
          ),
          SizedBox(height: 20.0,),
          Padding(padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width/2-164,
              right: MediaQuery.of(context).size.width/2-164),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    buildItems('assets/people_black_24dp.svg', 'لیست کاربران',usersList()),
                    SizedBox(width: 16.0,),
                    buildItems('assets/quiz_black_24dp.svg', 'لیست سوالات',QuestionList()),
                  ],
                ),
                SizedBox(height: 16.0,),
                Row(
                  children: <Widget>[
                    buildItems('assets/request_page_black_24dp.svg', 'درخواست ها',Requests()),
                    SizedBox(width: 16.0,),
                    buildItems('assets/manage_accounts_black_24dp.svg', 'تنظیمات',blue()),
                  ],
                ),
              ],
            ),
          ),)
        ],
      ),
    );
  }

  Material generateItem(){
    return Material(
        child: Row(
          children: <Widget>[
            Container(
              height: 68.0,
              width: MediaQuery.of(context).size.width/2-25,
          child: InkWell(
            onTap: (){},
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'سوالات',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '153',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: HexColor('252525'),
                      fontFamily: 'IranianSans',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),),
            Container(
              child: Divider(
                height: 40.0,
                thickness: 0.2,
                color: HexColor('585858'),
                indent: 0.2,
                endIndent: 0.2,
              ),
              color: Colors.black,
            ),
            Container(
              height: 68.0,
              width: MediaQuery.of(context).size.width/2-25,
              child: InkWell(
                onTap: (){},
                child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   Text(
                        'سوالات',
                     style: TextStyle(
                       fontSize: 16.0,
                       color: HexColor('585858'),
                       fontFamily: 'IranianSans',
                     ),
                     textAlign: TextAlign.center,
                    ),
                    Text(
                      '153',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: HexColor('252525'),
                        fontFamily: 'IranianSans',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),)
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

              height: 148,
              width: 148,
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 8.0,),
                    SvgPicture.asset(svgPath,height: 84.0,width: 84.0,),
                    SizedBox(height: 4.0),
                    Text(txt,
                      style: TextStyle(
                        fontFamily: 'IranianSans',
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0,
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

