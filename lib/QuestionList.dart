import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'ButtonNavigationBar.dart';
import 'DideBan.dart';

class QuestionList extends StatefulWidget {
  const QuestionList({Key? key}) : super(key: key);

  @override
  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 12.0,),
          Padding(
            padding: EdgeInsets.only(left: 24.0,right: 24.0,bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'لیست سوالات پیش‌فرض',
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
                child: Question(1),
              ),
            ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(2),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(3),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(4),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(5),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(6),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(7),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(8),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(9),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(10),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(11),
                  ),
                ),

                SizedBox(height: 24.0,),
                Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Container(
                    child: Question(12),
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

  Material Question(int number){
    return Material(
      color: HexColor('FFFFFF'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Container(
        height: 40.0,
        width: MediaQuery.of(context).size.width-48.0,
        child: Padding(
          padding: EdgeInsets.only(right: 12.0,top: 8.0),
          child: Text(
            number.toString()+'- مشکل بالا نیامدن ویندوز',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: 'IranianSans',
              fontSize: 14.0,
              color: HexColor('252525'),
            ),
          ),

        ),
      ),
      elevation: 8.0,
      shadowColor: HexColor('40246DFF'),

    );
  }


}
