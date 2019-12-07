import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/home/settings.dart';
import 'package:project/screens/outreach/volunteer/VolunteerMainPage.dart';
import 'package:project/screens/outreach/foster.dart';
import 'package:project/screens/outreach/education.dart';
import 'package:project/screens/outreach/donate.dart';


class Outreach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget buildButton(IconData icon, String buttonTitle,int i) {
      final Color tintColor = Color(0xff6b2978);
      switch (i) {
        case 1:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,


              ),


            ],
          );
          break;
        case 2:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VolunteerMainPage()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,


              ),


            ],
          );
          break;
        case 3:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Foster()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,


              ),


            ],
          );
          break;
        case 4:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,


              ),


            ],
          );
          break;

          case 5:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Education()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          );
          break;

        case 6:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Donate()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          );
          break;

        default:
          break;
      }
    }

    Widget threeButtonsSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.home, "Home",1),
          buildButton(Icons.people_outline, "Volunteer",2),
          buildButton(Icons.favorite, "Foster",3),

        ],
      ),
    );

    Widget threeButtonsSection1 = new Container(
    padding: EdgeInsets.only(left:6.0),
      alignment: Alignment.topLeft,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.attach_money, "Donate",6),
          buildButton(Icons.local_library, "Education",5),
          buildButton(Icons.help, "Resources",1),
          //buildButton(Icons.attach_money, "Donate",3),
          // buildButton(Icons.local_library, "Education",4),
          //buildButton(Icons.help, "Resources",3),
        ],
      ),
    );

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

               new Text("Community \nOutreach \n& Education",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color:Color(0xff6b2978),
                          fontFamily: 'Bitter'
                      )),

                new Image.network(
                  'https://www.neighbourhoodalert.co.uk/design/Home/CommunityMessagingBlock.jpg',
                  width: 200,
                  height: 200,
                ),
                //Need to add spae below this Text ?

              ],
            ),
          );


        return new Scaffold(
            appBar: AppBar(
              title: Text('Outreach',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'Bitter',
                ),
              ),
              centerTitle: true,

              backgroundColor: Color(0xff6b2978),
            ),
            body: new ListView(


                children: <Widget>[
                  titleSection,
                  threeButtonsSection,
                  threeButtonsSection1,
                  new Container(
                    padding: const EdgeInsets.all(10.0),
                    child:new Text('About',
                    style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 30.0,
                    fontFamily: 'Bitter',
                  ),),),
                  SizedBox(height: 8.0),
                  new Container(
                    padding: const EdgeInsets.all(12.0),
                    child: new Text("DCHS offers a variety of educational programs for all ages. These programs provide one-of-a-kind experiences that teach not only about DCHS services but how to help make our community a better place for both people and animals.",
                    style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16.0,
                        fontFamily: 'Bitter'
                    ),
                  ),
                  )
              ],
            ),

    );

  }
}