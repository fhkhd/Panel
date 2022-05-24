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
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height/12.35,
        backgroundColor: Colors.white,
        actions: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width/15,
                right: MediaQuery.of(context).size.width/15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'لیست‌کاربران',
                    style: TextStyle(
                      color: HexColor('252525'),
                      fontSize: MediaQuery.of(context).size.width/22.5,
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
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (_,int index) => itemCards(),
              itemCount: 8,
            ),
          ),)
        ],
      ),
        bottomNavigationBar: ButtonNavigationBar("افزودن کاربر"),
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
                    'نام‌کاربر:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    'محمد خواستار',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/87,),
              Row(
                children: [
                  Text(
                    'تلفن:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    _farsi.replaceFarsiNumber('09301111111'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      color: HexColor('252525'),
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
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/87,),
              Row(
                children: [
                  Text(
                    'تعداد درخواست:',
                    style: TextStyle(
                      color: HexColor('585858'),
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/120,),
                  Text(
                    _farsi.replaceFarsiNumber('42'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IranianSans',
                      fontSize: MediaQuery.of(context).size.width/25.75,
                      color: HexColor('252525'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
    );
  }
  Widget itemCards(){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width/15,
            right: MediaQuery.of(context).size.width/15,
            top: MediaQuery.of(context).size.height/67,
          ),
          child: Container(
            child: UserInfo(),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(36, 109, 255, 0.25),
                  blurRadius: 8,
                  offset: Offset(0,4),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/49,
          // height: 14.0,
        ),
      ],
    );
  }
}
