import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SANS BREAK'),
      ),

      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Center(
              child: new Image.asset(
                  'images/2.JPG',
                  fit:BoxFit.fill,
                  scale: 2.0,
                   width: 800.0,
                height:500.0,
              ),
            ),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                  )
              ),
            ),
            new Padding(padding: new EdgeInsets.only(top: 20.0)),
            new TextField(
              obscureText: true,
              decoration: new InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                  )
              ),
            ),
            new Center(
                child: new RaisedButton(
                  child: new Text("Sign in with Google"),
                  color: Colors.white,
                  onPressed: (){},
                )
            ),
            new Center(
                child: new RaisedButton(
                  child: new Text("Sign in with Facebook"),
                  color: Colors.blue,
                  onPressed: (){},
                )
            ),
            new Center(
                child : new RaisedButton(
                  child: new Text ("Login"),
                  color: Colors.green,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> _HalamanDua()),
                    );
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}
class _HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Menu'),
      ),
      body : new Container(
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/Capture.JPG',
              fit:BoxFit.fill,
              scale: 2.0,
            ),
            new Center(
                child : new RaisedButton(
                  child: new Text ("VisitNow"),
                  color: Colors.green,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> _HalamanTiga()),
                    );
                  },
                )
            ),


          ],
        ),
      ),
    );
  }
}
class _HalamanTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Menu'),
      ),
      body : new Container(
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/3.JPG',
              fit:BoxFit.fill,
              scale: 2.0,
            ),


          ],
        ),
      ),
    );
  }
}