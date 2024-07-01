import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String imagepath;
  final String Iconpath;
  final String title;

  Story({required this.imagepath, required this.Iconpath,required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      width: 100,
      height: 170,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0, // Border width
          ),
          borderRadius: BorderRadius.circular(15)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              imagepath,
              width: 100,
              height: 170,
              fit: BoxFit.cover,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff0867fe),
                          width: 1.8),
                      borderRadius: BorderRadius.circular(100)
                  ),

                  margin: const EdgeInsets.only(top: 5,right: 50),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff0867fe),
                    radius: 12,
                    backgroundImage: AssetImage(Iconpath),

                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
