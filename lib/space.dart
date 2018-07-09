import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Space extends StatefulWidget {
  Space({Key key, this.num, this.bottomB, this.topB, this.leftB, this.rightB}) : super(key: key);

  final int num;
  final int leftB;
  final int rightB;
  final int topB;
  final int bottomB;

  @override
  _Space createState() => new _Space();
}

class _Space extends State<Space> {

  int num = 0;


  _Space();

  @override
  initState() {
    super.initState();
    num = 0;
  }

  setNum(int n) {
    setState(() {
      num = n;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        child:
        Container(
          alignment: Alignment.center,
          width: 20.0,
          height: 40.0,
          child: Text(
            num == 0 ? " " : num.toString(), textAlign: TextAlign.center,),
          decoration: BoxDecoration(border: Border(top: widget.topB == 1
              ? BorderSide(width: 2.0, color: Colors.black)
              : BorderSide(width: .25, color: Colors.black), right: widget.rightB == 1
              ? BorderSide(width: 2.0, color: Colors.black)
              : BorderSide(width: .25, color: Colors.black), left: widget.leftB == 1
              ? BorderSide(width: 2.0, color: Colors.black)
              : BorderSide(width: .25, color: Colors.black), bottom: widget.bottomB == 1
              ? BorderSide(width: 2.0, color: Colors.black)
              : BorderSide(width: .25, color: Colors.black))),),
        onTap: () {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) =>
            new AlertDialog(
              content: Container(alignment: Alignment.center, height: 180.0, width: 180.0, child: Column(children: <Widget>[
                Row(children: <Widget>[
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("1"),
                    decoration: BoxDecoration(
                        color: num == 1 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                    onTap: () {
                      setState(() {
                        num = 1;
                      });
                      Navigator.pop(context);
                    },),),
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("2"),
                    decoration: BoxDecoration(
                        color: num == 2 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                      onTap: () {
                        setState(() {
                          num = 2;
                        });
                        Navigator.pop(context);
                      }),),
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("3"),
                    decoration: BoxDecoration(
                        color: num == 3 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                      onTap: () {
                        setState(() {
                          num = 3;
                        });
                        Navigator.pop(context);
                      }),)
                ],

                ),
                Row(children: <Widget>[
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("4"),
                    decoration: BoxDecoration(
                        color: num == 4 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                    onTap: () {
                      setState(() {
                        num = 4;
                      });
                      Navigator.pop(context);
                    },),),
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("5"),
                    decoration: BoxDecoration(
                        color: num == 5 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                      onTap: () {
                        setState(() {
                          num = 5;
                        });
                        Navigator.pop(context);
                      }),),
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("6"),
                    decoration: BoxDecoration(
                        color: num == 6 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                      onTap: () {
                        setState(() {
                          num = 6;
                        });
                        Navigator.pop(context);
                      }),)
                ],

                ),
                Row(children: <Widget>[
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("7"),
                    decoration: BoxDecoration(
                        color: num == 7 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                    onTap: () {
                      setState(() {
                        num = 7;
                      });
                      Navigator.pop(context);
                    },),),
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("8"),
                    decoration: BoxDecoration(
                        color: num == 8 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                      onTap: () {
                        setState(() {
                          num = 8;
                        });
                        Navigator.pop(context);
                      }),),
                  Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                    height: 60.0,
                    child: Text("9"),
                    decoration: BoxDecoration(
                        color: num == 9 ? Colors.black12: Colors.transparent,
                        border: Border.all(width: .5, color: Colors.black)),),
                      onTap: () {
                        setState(() {
                          num = 9;
                        });
                        Navigator.pop(context);
                      }),)
                ],

                ),
              ]),),)
          );
        });
    return Container(width: 0.0, height: 0.0);
  }
}
