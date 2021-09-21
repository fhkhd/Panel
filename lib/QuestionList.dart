import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'ButtonNavigationBar.dart';
import 'DideBan.dart';
import 'farsiNumber.dart';

class QuestionList extends StatefulWidget {
  const QuestionList({Key? key}) : super(key: key);

  @override
  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  
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
                    'لیست سوالات پیش‌فرض',
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
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemBuilder: (_,int index) => itemQuestion(index+1),
              itemCount: 35,
              scrollDirection: Axis.vertical,
            ),
          ),)
        ],
      ),
      bottomNavigationBar: ButtonNavigationBar("افزودن درخواست(پیش فرض)"),

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
        // height: 40.0,
        width: MediaQuery.of(context).size.width-(2*(MediaQuery.of(context).size.width/15)),
        child: Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width/30,
              // top: 8.0,
            top: MediaQuery.of(context).size.height/87,
            bottom: MediaQuery.of(context).size.height/87,
          ),
          child: Text(
            _farsi.replaceFarsiNumber(number.toString()+'- مشکل بالا نیامدن ویندوز'),
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: 'IranianSans',
              // fontSize: 14.0,
              fontSize: MediaQuery.of(context).size.width/25.75,
              color: HexColor('252525'),
            ),
          ),

        ),
      ),
      elevation: 8.0,
      shadowColor: HexColor('40246DFF'),

    );
  }

  Widget itemQuestion(int input){
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width/15,
          right: MediaQuery.of(context).size.width/15,
          // top: 10.0,
          top: MediaQuery.of(context).size.height/67,),
          child: Container(
            child: Question(input),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/49,
        ),
      ],
    );
  }

}
