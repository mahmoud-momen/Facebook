import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story_readed extends StatelessWidget {
  final String Imagepath;
  final String iconpath;
  final String title;


  Story_readed({required this.Imagepath, required this.iconpath,required this.title});
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
              Imagepath,
              width: 100,
              height: 170,
              fit: BoxFit.cover,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.3),
                          width: 1.8),
                      borderRadius: BorderRadius.circular(100)
                  ),

                  margin: const EdgeInsets.only(top: 5,left: 10),
                  child: CircleAvatar(
                    //backgroundColor: Color(0xff0867fe),
                    radius: 12,
                    backgroundImage: AssetImage(iconpath),

                  ),
                ),
                Container(

                  alignment: Alignment(0, 0.9),
                  //margin: EdgeInsets.only(top: 100),
                  child: Text(title,
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                      fontSize: 12

                    ),
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
