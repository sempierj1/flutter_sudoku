import 'space.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  final List board = getBoard();



  @override
  Widget build(BuildContext context) {
    print(board);
    return ListView.builder(itemCount: board.length,itemBuilder: (BuildContext context, int index){
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
  }
}

getBoard()
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
                  print(i.toString() + "," + j.toString() + " [" + t.toString() + "," + b.toString() + "," + l.toString() + "," + r.toString() + "]");
        initBoard[i][j] = new Space(num: j == 0 ? i : 0, bottomB: b, topB: t, leftB: l, rightB: r);
      }
    }
    return initBoard;
}