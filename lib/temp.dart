import 'space.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  final List board = getBoard();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: board.length,itemBuilder: (BuildContext context, int index){
      return Row(children: <Widget>[
        Expanded(child: Text(board[index][0].getNum().toString())),
        Expanded(child: Text(board[index][1].getNum().toString())),
        Expanded(child: Text(board[index][2].getNum().toString())),
        Expanded(child: Text(board[index][3].getNum().toString())),
        Expanded(child: Text(board[index][4].getNum().toString())),
        Expanded(child: Text(board[index][5].getNum().toString())),
        Expanded(child: Text(board[index][6].getNum().toString())),
        Expanded(child: Text(board[index][7].getNum().toString())),
        Expanded(child: Text(board[index][8].getNum().toString())),
      ],);
    });
  }
}

getBoard()
{
  List initBoard = new List.generate(9, (_) => new List(9));
  for(int i = 0; i < 9; i++)
  {
    for(int j = 0; j < 9; j++) {
      List tempList = new List();
      tempList.add(i);
      tempList.add(j);
      initBoard[i][j] = new Space(0, tempList);
    }
  }
  return initBoard;
}


class Space{
  int num;
  List coords = new List();

  Space(int n, List c)
  {
    num = n;
    coords = c;
  }

  getNum()
  {
    return num;
  }

  getCoords()
  {
    return coords;
  }
}
/*
class Space extends StatefulWidget {
  Space({Key key, this.num}) : super(key: key);

  final int num;

  @override
  _Space createState() => new _Space(num);
}

class _Space extends State<Space> {
  int num;

  _Space(this.num);

  @override
  initState() {
    super.initState();
    num = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        child:
            Container(width: 10.0, height: 10.0, child: Text(num == 0 ? " " : num.toString())),
        onTap: () {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) => new AlertDialog(
                    content: Column(children: <Widget>[
                      Row(children: <Widget>[
                        Expanded(child: GestureDetector(child: Container(child: Text("1"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 1;
                          });
                        },),),
                        Expanded(child: GestureDetector(child: Container(child: Text("2"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 2;
                          });
                        }),),
                        Expanded(child: GestureDetector(child: Container(child: Text("3"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 3;
                          });
                        }),)
                      ],

                    ),
                      Row(children: <Widget>[
                        Expanded(child: GestureDetector(child: Container(child: Text("4"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 4;
                          });
                        },),),
                        Expanded(child: GestureDetector(child: Container(child: Text("5"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 5;
                          });
                        }),),
                        Expanded(child: GestureDetector(child: Container(child: Text("6"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 6;
                          });
                        }),)
                      ],

                      ),
                      Row(children: <Widget>[
                        Expanded(child: GestureDetector(child: Container(child: Text("7"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 7;
                          });
                        },),),
                        Expanded(child: GestureDetector(child: Container(child: Text("8"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 8;
                          });
                        }),),
                        Expanded(child: GestureDetector(child: Container(child: Text("9"), decoration: BoxDecoration(border: Border.all(width: .5, color: Colors.black)),), onTap: (){
                          setState(() {
                            num = 9;
                          });
                        }),)
                      ],

                      ),
                    ]),),
          );
        });
    return Container(width: 0.0, height: 0.0);
  }
}
*/