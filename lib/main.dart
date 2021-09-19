import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/DideBan.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  title: "App",
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
    Locale('fa'), // English, no country code
  ],
  home: blue(),
  debugShowCheckedModeBanner: false,
));

class blue extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);


    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => DideBan())));


    return Scaffold(
        backgroundColor: HexColor('246DFF'),
        body: Column(
          children: <Widget>[
            SizedBox(height: (MediaQuery.of(context).size.height-247.25)/2,),
            Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/2-80.0,right: MediaQuery.of(context).size.width/2-80.0),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DideBan()));
                },
                child: Container(
                  height: 160.0,
                  width: 160.0,
                  alignment: Alignment.center,
                  child: SvgPicture.asset('assets/management.svg',
                    height: 160.0,width: 160.0,
                    color: Colors.white,
                    alignment: Alignment.center,),
                ),
              ),
            ),
            SizedBox(height: 63.25,),
            Container(
              child: Text(
                'Version 1.0.0',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
    );
  }
}


