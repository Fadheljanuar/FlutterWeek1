import 'package:flutter/material.dart';

class Home extends StatefulWidget {

 _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  Color favcolor;


void initState() {
  super.initState(); {
    favcolor = Colors.white;
  }
  
}
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Plus Sixty Two Sub"),
      backgroundColor: Colors.pink,
    ),
    body: Stack(
      children: <Widget>[

        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [const Color(0xffff67b4), const Color(0xff000000)],)),

          child: Column(
            children: <Widget>[
              
              Flexible(
                  flex: 2,
                  child: Container(
                      width: 500,
                      child: Image(image: AssetImage("image/Sec_Logo-1.JPG"), fit: BoxFit.fill,))),
                      
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(width: 150, margin: EdgeInsets.all(5),
                            child: Image(image: AssetImage(""),))),
                            
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            width: 150,
                            child: Image(image: AssetImage(""),
                            ))),

                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            width: 150,
                            child: Image(image: AssetImage(""),
                            ))),

                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            width: 150,
                            child: Image(
                              image: AssetImage(""),
                            ))),
                  ],
                ),
              ),
              
              Text(
                '(+62) Is Here', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 32),
              ),

              
              Flexible(
                  flex: 4,
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(""),
                          Text(" 'Living in a world that keeps moving and recreate itself in every moment.'",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 18, ), textAlign: TextAlign.center),
                          Text(""),
                          Text(""),
                          Text(
                              "Founded in 2019, (+62) and foremost idea is all about the youth culture. There are no rules in what we do and what we should wear.",
                              style: TextStyle(
                                color: Colors.white,
                                  fontWeight: FontWeight.normal, fontSize: 16),
                              textAlign: TextAlign.center),
                          Text(""),
                          Text(""),
                          Text(
                              "Playing around with colours, messin’ around with graphics, and always producing high quality dailywear garments that are designed to turn heads and drop panties.With no roots attached, we never limit ourselves in what we do, we’re here just to enjoy the roller coaster ride.",
                              style: TextStyle(
                                color: Colors.white,
                                  fontWeight: FontWeight.normal, fontSize: 16),
                              textAlign: TextAlign.center)
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
          
              onPressed: () {
                setState(() {
                  if (favcolor == Colors.white) {
                    favcolor = Colors.pinkAccent;
                  } else if (favcolor == Colors.pinkAccent) {
                    favcolor = Colors.white;
                  }
                });
              },
              
              backgroundColor: Colors.white10,
              child: Icon(
                Icons.favorite,
                color: favcolor,
              ),
          ),
        ),
        
                         
        
    )
        ]));
  }
}
