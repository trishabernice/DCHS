import 'package:flutter/material.dart';
import 'package:flutter_app/admin.dart';
import 'package:flutter_app/calendar.dart';
import 'package:flutter_app/outreach.dart';
import 'package:flutter_app/setting.dart';


void main() => runApp(MaterialApp(
  home:Home(),
));
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Helping People Helping Animals",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color:Colors.deepPurpleAccent,
                          fontFamily: 'Bitter'
                      )),
                ),
                //Need to add space below this Text ?
                new Text("For nearly 100 years, DCHS has provided services for our community, helping people help animals. Whether you are looking to bring a new pet into your family, searching for your lost pet, found a wild animal in need of assistance, have made the difficult decision to surrender your pet or are looking for educational opportunities, DCHS is here to help.",
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                     fontFamily: 'Bitter'
                  ),
                ),
              ],
            ),
          ),
          new Icon(Icons.favorite, color: Colors.red),
          new Text(" 100", style: new TextStyle(fontSize: 16.0),),
        ],
      ),
    );
   /* Widget buildButton(IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w600, color: tintColor),),
          )
        ],
      );
    }

    */

    Widget buildButton(IconData icon, String buttonTitle,int i) {
      final Color tintColor = Colors.deepPurple;
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
                    MaterialPageRoute(builder: (context) => admin()),
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
                    MaterialPageRoute(builder: (context) => outreach()),
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
                    MaterialPageRoute(builder: (context) => calendar()),
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

    Widget fourButtonsSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: <Widget>[
          //build in a separated function
            buildButton(Icons.home, "Home",1),
            buildButton(Icons.supervised_user_circle, "Admin",2),
            buildButton(Icons.search, "Outreach",3),
            buildButton(Icons.calendar_today, "Calendar",4),
          //buildButton(Icons.settings, "Setting",5),
        ],
      ),
    );


    return new MaterialApp(
    home: new Scaffold(
      appBar: AppBar(
        title: Text('Dane County Humane Society',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.lightGreen,
            fontFamily: 'Bitter',
          ),
        ),
        centerTitle: true,

        backgroundColor: Colors.deepPurpleAccent,
      ),
        body: new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(5.0),
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  child: new Image.asset(
                    'img/1.jpg',
                  height: 160,
                  width:160, // fit: BoxFit.cover,
                  ),
                ),
                new Container(
                  child:new Image.asset(
                    'img/2.jpg', //scale: 0.5,
                    height: 160,
                    width:160,              //idth: 130,
                   //eight: 130,
                  //alignment: Alignment.centerRight,

                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Container(
                  child: new Image.asset(
                    'img/3.jpg',
                    height: 160,
                    width:160, // fit: BoxFit.cover,
                  ),
                ),
                new Container(
                  child:new Image.asset(
                    'img/4.jpeg', //scale: 0.5,
                    height: 160,
                    width:160,              //idth: 130,
                    //eight: 130,
                    //alignment: Alignment.centerRight,

                  ),
                ),
              ],






            ),
            //You can add more widget bellow


            SizedBox(height: 5),
            fourButtonsSection,
            titleSection,

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => setting()),
            );
          },
          backgroundColor: Colors.deepPurpleAccent,
          child: Text('setting',style: new TextStyle(fontSize: 10),),


    )
    ));//Widget with "Material design"


  }
}

