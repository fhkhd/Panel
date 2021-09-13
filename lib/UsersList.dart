import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'DideBan.dart';
import 'ButtonNavigationBar.dart';


class usersList extends StatefulWidget {
  const usersList({Key? key}) : super(key: key);

  @override
  _usersListState createState() => _usersListState();
}

class _usersListState extends State<usersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(24.0),
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
                  child: Icon(Icons.arrow_back_ios_new_outlined,color: HexColor('3075FF'),size: 20.0,),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.0,),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),

                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: UserInfo(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
        bottomNavigationBar: ButtonNavigationBar(),
    );
  }

  Card UserInfo(){
    return Card(
      color: HexColor('FFFFFF'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Container(
        height: 136,
        width: MediaQuery.of(context).size.width-48.0,
        child: Padding(
          padding: EdgeInsets.only(right: 12.0,top: 8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'نام:',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'محمد خواستار',
                    textAlign: TextAlign.right,
                  ),
                ],
              )
            ],
          ),
        ),
        ),
      );
  }

}
