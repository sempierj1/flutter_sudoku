import 'spaceNew.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'solve.dart';

class Board extends StatefulWidget {

  Board();




  @override
  _Board createState() => new _Board();
}

class _Board extends State<Board> {

  List board;
  Solve solve;

  _Board();

  @override
  initState() {
    super.initState();
    board = createBoard();
    solve = new Solve(board);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[ ListView.builder(shrinkWrap:true, itemCount: board.length,itemBuilder: (BuildContext context, int index){
      return Padding(padding: EdgeInsets.only(left: 5.0, right: 5.0, top: index == 0 ? 5.0 : 0.0), child: Row(children: <Widget>[
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][0].num == 0 ? " ": board[index][0].num.toString() , textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][0].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][0].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][0].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][0].bottomB == 1
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
                              color: board[index][0].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][0].num = 1;
                              board[index][0].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][0].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][0].num = 2;
                                board[index][0].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][0].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][0].num = 3;
                                board[index][0].hint = true;
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
                              color:  board[index][0].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][0].num = 4;
                              board[index][0].hint = true;

                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][0].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][0].num = 5;
                                board[index][0].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][0].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][0].num = 6;
                                board[index][0].hint = true;
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
                              color:  board[index][0].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][0].num = 7;
                              board[index][0].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][0].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][0].num = 8;
                                board[index][0].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][0].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][0].num = 9;
                                board[index][0].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][1].num == 0 ? " ": board[index][1].num.toString(), textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][1].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][1].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][1].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][1].bottomB == 1
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
                              color: board[index][1].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][1].num = 1;
                              board[index][1].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][1].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][1].num = 2;
                                board[index][1].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][0].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][1].num = 3;
                                board[index][1].hint = true;
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
                              color:  board[index][1].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][1].num = 4;
                              board[index][1].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][1].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][1].num = 5;
                                board[index][1].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][1].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][1].num = 6;
                                board[index][1].hint = true;
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
                              color:  board[index][1].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][1].num = 7;
                              board[index][1].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][1].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][1].num = 8;
                                board[index][1].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][1].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][1].num = 9;
                                board[index][1].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][2].num == 0 ? " ": board[index][2].num.toString(), textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][2].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][2].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][2].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][2].bottomB == 1
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
                              color: board[index][2].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][2].num = 1;
                              board[index][2].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][2].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][2].num = 2;
                                board[index][2].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][2].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][2].num = 3;
                                board[index][2].hint = true;
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
                              color:  board[index][2].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][2].num = 4;
                              board[index][2].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][2].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][2].num = 5;
                                board[index][2].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][2].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][2].num = 6;
                                board[index][2].hint = true;
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
                              color:  board[index][2].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][2].num = 7;
                              board[index][2].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][2].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][2].num = 8;
                                board[index][2].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][2].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][2].num = 9;
                                board[index][2].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][3].num == 0 ? " ": board[index][3].num.toString(), textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][3].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][3].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][3].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][3].bottomB == 1
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
                              color: board[index][3].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][3].num = 1;
                              board[index][3].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][3].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][3].num = 2;
                                board[index][3].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][3].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][3].num = 3;
                                board[index][3].hint = true;
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
                              color:  board[index][3].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][3].num = 4;
                              board[index][3].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][3].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][3].num = 5;
                                board[index][3].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][3].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][3].num = 6;
                                board[index][3].hint = true;
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
                              color:  board[index][3].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][3].num = 7;
                              board[index][3].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][3].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][3].num = 8;
                                board[index][3].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][3].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][3].num = 9;
                                board[index][3].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][4].num == 0 ? " ": board[index][4].num.toString(), textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][4].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][4].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][4].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][4].bottomB == 1
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
                              color: board[index][4].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][4].num = 1;
                              board[index][4].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][4].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][4].num = 2;
                                board[index][4].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][4].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][4].num = 3;
                                board[index][4].hint = true;
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
                              color:  board[index][4].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][4].num = 4;
                              board[index][4].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][4].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][4].num = 5;
                                board[index][4].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][4].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][4].num = 6;
                                board[index][4].hint = true;
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
                              color:  board[index][4].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][4].num = 7;
                              board[index][4].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][4].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][4].num = 8;
                                board[index][4].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][4].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][4].num = 9;
                                board[index][4].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][5].num == 0 ? " ": board[index][5].num.toString(), textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][5].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][5].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][5].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][5].bottomB == 1
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
                              color: board[index][5].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][5].num = 1;
                              board[index][5].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][5].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][5].num = 2;
                                board[index][5].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][5].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][5].num = 3;
                                board[index][5].hint = true;
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
                              color:  board[index][5].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][5].num = 4;
                              board[index][5].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][5].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][5].num = 5;
                                board[index][5].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][5].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][5].num = 6;
                                board[index][5].hint = true;
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
                              color:  board[index][5].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][5].num = 7;
                              board[index][5].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][5].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][5].num = 8;
                                board[index][5].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][5].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][5].num = 9;
                                board[index][5].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][6].num == 0 ? " ": board[index][6].num.toString(), textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][6].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][6].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][6].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][6].bottomB == 1
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
                              color: board[index][6].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][6].num = 1;
                              board[index][6].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][6].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][6].num = 2;
                                board[index][6].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][6].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][6].num = 3;
                                board[index][6].hint = true;
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
                              color:  board[index][6].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][6].num = 4;
                              board[index][6].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][6].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][6].num = 5;
                                board[index][6].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][6].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][6].num = 6;
                                board[index][6].hint = true;
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
                              color:  board[index][6].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][6].num = 7;
                              board[index][6].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][6].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][6].num = 8;
                                board[index][6].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][6].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][6].num = 9;
                                board[index][6].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][7].num == 0 ? " ": board[index][7].num.toString(), textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][7].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][7].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][7].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][7].bottomB == 1
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
                              color: board[index][7].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][7].num = 1;
                              board[index][7].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][7].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][7].num = 2;
                                board[index][7].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][7].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][7].num = 3;
                                board[index][7].hint = true;
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
                              color:  board[index][7].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][7].num = 4;
                              board[index][7].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][7].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][7].num = 5;
                                board[index][7].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][7].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][7].num = 6;
                                board[index][7].hint = true;
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
                              color:  board[index][7].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][7].num = 7;
                              board[index][7].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][7].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][7].num = 8;
                                board[index][7].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][7].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][7].num = 9;
                                board[index][7].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
        Expanded(child: GestureDetector(
            child:
            Container(
              alignment: Alignment.center,
              width: 20.0,
              height: 40.0,
              child: Text(
                board[index][8].num == 0 ? " ": board[index][8].num.toString(), textAlign: TextAlign.center,),
              decoration: BoxDecoration(border: Border(top: board[index][8].topB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), right: board[index][8].rightB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), left: board[index][8].leftB == 1
                  ? BorderSide(width: 2.0, color: Colors.black)
                  : BorderSide(width: .25, color: Colors.black), bottom: board[index][8].bottomB == 1
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
                              color: board[index][8].num == 1 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][8].num = 1;
                              board[index][8].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("2"),
                          decoration: BoxDecoration(
                              color:  board[index][8].num == 2 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][8].num = 2;
                                board[index][8].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("3"),
                          decoration: BoxDecoration(
                              color:  board[index][8].num == 3 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][8].num = 3;
                                board[index][8].hint = true;
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
                              color:  board[index][8].num == 4 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][8].num = 4;
                              board[index][8].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("5"),
                          decoration: BoxDecoration(
                              color:  board[index][8].num == 5 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][8].num = 5;
                                board[index][8].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("6"),
                          decoration: BoxDecoration(
                              color:  board[index][8].num == 6 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][8].num = 6;
                                board[index][8].hint = true;
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
                              color:  board[index][8].num == 7 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                          onTap: () {
                            setState(() {
                              board[index][8].num = 7;
                              board[index][8].hint = true;
                            });
                            Navigator.pop(context);
                          },),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("8"),
                          decoration: BoxDecoration(
                              color:  board[index][8].num == 8 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][8].num = 8;
                                board[index][8].hint = true;
                              });
                              Navigator.pop(context);
                            }),),
                        Expanded(child: GestureDetector(child: Container(alignment: Alignment.center, width: 60.0,
                          height: 60.0,
                          child: Text("9"),
                          decoration: BoxDecoration(
                              color:  board[index][8].num == 9 ? Colors.black12: Colors.transparent,
                              border: Border.all(width: .5, color: Colors.black)),),
                            onTap: () {
                              setState(() {
                                board[index][8].num = 9;
                                board[index][8].hint = true;
                              });
                              Navigator.pop(context);
                            }),)
                      ],

                      ),
                    ]),),)
              );
            })),
      ],));
    }),
    FlatButton(onPressed: (){
      setState(() {
       board = solve.bruteSolve();
      });

    }, child: Text("Solve"))],);
  }
  /*@override
  Widget build(BuildContext context) {
    return ListView.builder(shrinkWrap:true, itemCount: board.length,itemBuilder: (BuildContext context, int index){
      return Padding(padding: EdgeInsets.only(left: 5.0, right: 5.0, top: index == 0 ? 5.0 : 0.0), child: Row(children: <Widget>[
        Expanded(child: board[index][0]),
        Expanded(child: board[index][1]),
        Expanded(child: board[index][2]),
        Expanded(child: board[index][3]),
        Expanded(child: board[index][4]),
        Expanded(child: board[index][5]),
        Expanded(child: board[index][6]),
        Expanded(child: board[index][7]),
        Expanded(child: board[index][8]),
      ],));
    });
  }*/

  createBoard()
  {
    List initBoard = new List.generate(9, (_) => new List(9));
    for(int i = 0; i < 9; i++)
    {
      for(int j = 0; j < 9; j++) {
        int t = 0;
        int b = 0;
        int l = 0;
        int r = 0;

        if(i == 0)
        {
          t = 1;
        }
        if(j == 0)
        {
          l = 1;
        }
        if(i == 8)
        {
          b = 1;
        }
        if(j == 8)
        {
          r = 1;
        }
        if((i+1) % 3 == 0)
        {
          b = 1;
        }
        if((j+1) % 3 == 0)
        {
          r = 1;
        }
        //print(i.toString() + "," + j.toString() + " [" + t.toString() + "," + b.toString() + "," + l.toString() + "," + r.toString() + "]");
        initBoard[i][j] = new Space(0, l, r, t, b, j, i, false);
      }
    }
    return initBoard;
  }

}

