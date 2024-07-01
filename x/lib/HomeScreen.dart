import 'dart:ui';

import 'package:home/Story_readed.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/material.dart';
import 'Post.dart';
import 'Story.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 15),
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
        title: Row(
          children: [
            Container(
              child: Text(
                'facebook',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff0867fe),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 0, top: 8),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xffe5e6ea),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 0, top: 8),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xffe5e6ea),
                  child: Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 10, top: 8),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xffe5e6ea),
                  child: Icon(
                    MdiIcons.facebookMessenger,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.home,
                        color: Color(0xff0867fe),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 2,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.people,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.ondemand_video,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.notifications_rounded,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.menu_sharp,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 10),
                  width: 280,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment(-0.7, 0),
                  child: Text(
                    "What's on your mind...?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 15),
                  child: Icon(
                    Icons.photo_library_outlined,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 3,
              color: Color(0xffB3B3B3),
              width: double.infinity,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      width: 100,
                      height: 170,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 2.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Image.asset(
                              'assets/images/profile.jpg',
                              width: 100,
                              height: 85,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(100)),
                              margin: EdgeInsets.only(top: 70),
                              child: CircleAvatar(
                                backgroundColor: Color(0xff0867fe),
                                radius: 15,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 110),
                                child: Text(
                                  ' Create',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 130),
                              child: Text(
                                ' Story',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Story(
                        imagepath: 'assets/images/kvara.jpg',
                        Iconpath: 'assets/images/romano.jpg',
                        title: 'Fabrizio Romano'),
                    Story(
                        imagepath: 'assets/images/quran.jpg',
                        Iconpath: 'assets/images/gemy.jpg',
                        title: 'Ibrahim Mohamed'),
                    Story_readed(
                      Imagepath: 'assets/images/mk2.jpg',
                      iconpath: 'assets/images/mk.jpg',
                      title: 'Mortal Komabt',
                    ),
                    Story_readed(
                      Imagepath: 'assets/images/bowen.jpg',
                      iconpath: 'assets/images/west.jpg',
                      title: 'West Ham United',
                    ),
                    Story_readed(
                      Imagepath: 'assets/images/bowen.jpg',
                      iconpath: 'assets/images/west.jpg',
                      title: 'West Ham United',
                    ),
                    Story_readed(
                      Imagepath: 'assets/images/bowen.jpg',
                      iconpath: 'assets/images/west.jpg',
                      title: 'West Ham United',
                    ),
                    Story_readed(
                      Imagepath: 'assets/images/bowen.jpg',
                      iconpath: 'assets/images/west.jpg',
                      title: 'West Ham United',
                    ),
                    Story_readed(
                      Imagepath: 'assets/images/bowen.jpg',
                      iconpath: 'assets/images/west.jpg',
                      title: '',
                    ),
                    Story_readed(
                      Imagepath: 'assets/images/bowen.jpg',
                      iconpath: 'assets/images/west.jpg',
                      title: '',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 3,
              color: Color(0xffB3B3B3),
              width: double.infinity,
            ),
            SizedBox(
              height: 10,
            ),


                Post(text: 'Happy birthday to the ever debonair John Krasinski. 😎', image: 'assets/images/imdb2.jpg',icon: 'assets/images/imdb.jpg', name: 'IMDb',),
            Post(text: "#BattlefieldHighlights have arrived! 🪂🤯\n Let us know what you're looking forward to this year.", image: 'assets/images/BF11.jpg',icon: 'assets/images/bf2.jpg', name: 'EA',),


          ],
        ),
      ),
    );
  }
}
