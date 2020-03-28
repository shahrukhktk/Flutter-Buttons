import 'package:buttonvideo/secondScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPractice extends StatefulWidget {
  @override
  _ButtonPracticeState createState() => _ButtonPracticeState();
}

class _ButtonPracticeState extends State<ButtonPractice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Different types of button in flutter",style: TextStyle(
              fontSize: 20.0
            ),),
            FlatButton(
                onPressed: (){},
                child: Text("One"),
              color: Colors.teal,
              splashColor: Colors.purpleAccent,
            ),
            RaisedButton(onPressed: (){},
            child: Text("two"),
              color: Colors.amber,
              hoverColor: Colors.lightGreen,
            ),
            OutlineButton(onPressed: (){},
            child: Text("three"),
              color: Colors.green,
              borderSide: BorderSide(
                color: Colors.deepPurpleAccent,
                width: 3.0
              ),
            ),
            IconButton(icon: Icon(Icons.add,color: Colors.red,),
                splashColor: CupertinoColors.activeOrange,
                onPressed: (){}
                ),
            FloatingActionButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> SecondScreen()));
            },
            child: Icon(Icons.search),
            ),
            ButtonBar(
              children: <Widget>[
                Text("You can put any type of button here"),
                RaisedButton(onPressed: (){},
                ),
                MaterialButton(onPressed: (){})
              ],
            )
          ],
        ),
      ),
    );
  }
}
