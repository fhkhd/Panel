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
                    'لیست سوالات پیش‌فرض',
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
        width: MediaQuery.of(context).size.width-(2*(MediaQuery.of(context).size.width/15)),
        child: Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width/30,
            top: MediaQuery.of(context).size.height/87,
            bottom: MediaQuery.of(context).size.height/87,
          ),
          child: Text(
            _farsi.replaceFarsiNumber(number.toString()+'- مشکل بالا نیامدن ویندوز'),
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: 'IranianSans',
              fontSize: MediaQuery.of(context).size.width/25.75,
              color: HexColor('252525'),
            ),
          ),

        ),
      ),

    );
  }

  Widget itemQuestion(int input){
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width/15,
          right: MediaQuery.of(context).size.width/15,
          top: MediaQuery.of(context).size.height/67,),
          child: Container(
            child: Question(input),
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
        ),
      ],
    );
  }

}
