import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Post extends StatelessWidget {
  final String text;
  final String image;
  final String icon;
  final String name;

  Post({required this.text, required this.image, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(icon),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(MdiIcons.checkDecagram,color: Color(0xff0867fe),
                        size: 14,),

                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '26m',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        SizedBox(width: 5,),
                        Icon(MdiIcons.earth,
                          size: 10,
                          color: Colors.grey,)
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(

                  margin: EdgeInsets.only(right: 10),
                  child: Icon(
                    MdiIcons.dotsHorizontal,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.close,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              text,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Image.asset(
            image,
            fit: BoxFit.cover,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Color(0xff0867fe),
                  child: Icon(
                    MdiIcons.thumbUp,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 4),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Color(0xfff03047),
                  child: Icon(
                    MdiIcons.heart,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  '15k',
                  style: TextStyle(color: Color(0xffA9A9A9), fontSize: 10),
                ),
                Spacer(),
                Text(
                  '564 comments',
                  style: TextStyle(color: Color(0xffA9A9A9), fontSize: 10),
                ),
                Icon(
                  MdiIcons.circleSmall,
                  color: Colors.grey,
                  size: 10,
                ),
                Text(
                  '320 shares',
                  style: TextStyle(color: Color(0xffA9A9A9), fontSize: 10),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xffA9A9A9),
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PostActionButton(
                  icon: MdiIcons.thumbUpOutline,
                  label: 'Like',
                ),
                PostActionButton(
                  icon: MdiIcons.commentOutline,
                  label: 'Comment',
                ),
                PostActionButton(
                  icon: MdiIcons.shareOutline,
                  label: 'Share',
                ),
              ],
            ),
          ),
          Container(
            height: 3,
            color: Color(0xffB3B3B3),
          ),
        ],
      ),
    );
  }
}

class PostActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const PostActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color(0xff71797E),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: TextStyle(color: Color(0xff71797E)),
        ),
      ],
    );
  }
}
