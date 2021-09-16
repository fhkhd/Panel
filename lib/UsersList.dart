import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'DideBan.dart';
import 'ButtonNavigationBar.dart';
import 'farsiNumber.dart';


class usersList extends StatefulWidget {
  const usersList({Key? key}) : super(key: key);

  @override
  _usersListState createState() => _usersListState();
}

class _usersListState extends State<usersList> {
  
  Farsi _farsi=new Farsi();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 12.0),
          Padding(padding: EdgeInsets.only(left: 24.0,right: 24.0,bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'لیست‌کاربران',
                  style: TextStyle(
                    color: HexColor('252525'),
                    fontSize: 16.0,
                    fontFamily: 'IranianSans',
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DideBan()));
                  },
                  child: SvgPicture.asset('assets/forward_black_24dp.svg',height: 30,width: 30,),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),
                SizedBox(height: 24.0,),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                SizedBox(height: 24.0,),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),
                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                SizedBox(height: 24.0,),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                SizedBox(height: 24.0,),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),
                SizedBox(height: 135.0,),

              ],
            ),
          ),
        ],
      ),
        bottomNavigationBar: ButtonNavigationBar(),
    );
  }

 Material UserInfo(){
    return Material(
      color: HexColor('FFFFFF'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Container(
        height: 136.0,
        width: MediaQuery.of(context).size.width-48.0,
        child: Padding(
          padding: EdgeInsets.only(right: 12.0,top: 8.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: 13.0,),
                  Text(
                    'نام‌کاربر:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'محمد خواستار',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0,),
              Row(
                children: [
                  Text(
                    'تلفن:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    _farsi.replaceFarsiNumber('09301111111'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0,),
              Row(
                children: [
                  Text(
                    'آدرس:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    _farsi.replaceFarsiNumber('قم،آزادگان،خیابان نواب،کوچه16'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0,),
              Row(
                children: [
                  Text(
                    'تعداد درخواست:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    _farsi.replaceFarsiNumber('42'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: 14.0,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
      elevation: 8.0,
      shadowColor: HexColor('40246DFF'),

    );
  }

}
