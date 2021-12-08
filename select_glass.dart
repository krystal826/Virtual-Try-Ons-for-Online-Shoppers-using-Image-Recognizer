import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectGlass extends StatefulWidget {
  const SelectGlass({Key? key}) : super(key: key);

  @override
  _SelectGlassState createState() => _SelectGlassState();
}

class _SelectGlassState extends State<SelectGlass> {
  @override
  Widget build(BuildContext context) {
    //to get size
    var size = MediaQuery.of(context).size;
    //style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children:<Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage('assets/images/logo VTO.png')
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Virtual Try-On (VTO)',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                            Text(
                              'Sunglasses',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Regular',
                                  color: Colors.black,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        primary: false,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://i2.optical-center.fr/workspace_prods/from360/0-RAY-BAN-RB-3916-130331-Clubmaster-Square-Legend-Gold-52-21-29319_HD.jpg?1607541234",
                                  height: 128,
                                ),
                                Text(
                                  'Clubmaster Square Legend Gold',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://i2.optical-center.fr/workspace_prods/from360/0-RAY-BAN-RB-3946-130431-Clubmaster-Oval-Legend-Gold-52-19-29327_HD.jpg?1607569512",
                                  height: 128,
                                ),
                                Text(
                                  'Clubmaster Oval Legend Gold',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://i2.optical-center.fr/workspace_prods/from360/0-RAY-BAN-RB-3697-002-11-Wings-II-35-135-29310_HD.jpg?1607557166",
                                  height: 128,
                                ),
                                Text(
                                  'Wings II',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://i2.optical-center.fr/workspace_prods/t5-RAY-BAN-RB-2132-6430B1-New-Wayfarer-52-18-29932_HD.jpg?1622727231",
                                  height: 128,
                                ),
                                Text(
                                  'New Wayfarer',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



