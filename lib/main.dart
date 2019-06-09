import 'package:flare_flutter/flare_controls.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final FlareControls _animationController = FlareControls();

  void _onPressAnimation() {
    _animationController.play("Untitled");
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: FlareActor(
            "assets/star.flr",
            shouldClip: false,
            fit: BoxFit.contain,
            controller: _animationController,
          ),
        )
    ,
    floatingActionButton: FloatingActionButton(
    onPressed: _onPressAnimation,
    tooltip: 'Increment',
    child: Icon(Icons.add
    )
    ,
    )
    , // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
