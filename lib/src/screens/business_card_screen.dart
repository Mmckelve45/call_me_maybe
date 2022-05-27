// import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  _BusinessCardState createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(
              flex: 2,
            ),
            Expanded(flex: 12, child: Image.asset('assets/images/linkedInPhoto.jpg')),
            Expanded(
              flex: 3,
              child: 
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('Matt McKelvey',
                style:TextStyle(
                  fontSize: 25,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w900,
                  )
                )
              )
            ),
            Expanded(
              flex: 3,
              child: 
              Align(
                alignment: Alignment.center,
                child: Text('Software/Accounting Dude',
                style:TextStyle(
                  fontSize: 18,
                  fontFamily: 'Rubik',
                  fontStyle: FontStyle.italic
                  )
                )
              )
            ),
            Expanded(
              flex: 3,
              child: 
              Align(
                alignment: Alignment.center,
                child: 
                  GestureDetector(
                    onTap:() => launch('sms:6024308899'),
                    child: 
                      Text('(602) 430-8899',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Rubik'
                        )
                      )
                  )
              )
            ),
            Expanded(flex: 6, child: githubRow())
          ],
        ),
    );
  }
}


Widget githubRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Expanded(
        flex: 18,
        child: 
        Align(alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => launch('https://github.com/Mmckelve45?tab=repositories'),
            child: Text(
              'https://github.com',
              style: TextStyle(fontSize: 16, fontFamily: 'Raleway', color: Color.fromARGB(255, 42, 7, 238)),
            )
          )
        )
      ),
      Expanded(
        flex: 18,
        child: Align(
          alignment: Alignment.center,
          child: Text('mmckelve45@gmail.com',
          style: TextStyle(fontSize: 16, fontFamily:'Raleway', color: Color.fromARGB(255, 42, 7, 238)))
        )
      )
    ]
  );
}