import 'check.dart';
import 'dart:developer';
class Solve{
  Check check;
  List board;

  Solve(List b)
  {
    board = b;
    check = new Check(board);
  }

  List spaces;

  bruteSolve()
  {
    int num = 1;

    addNum(int x, int y) {


      if(board[y][x].num == 0 || board[y][x].hint != true)
        {
          board[y][x].num = num;
          if(!check.checkSpace(x, y))
            {
              if(num < 9)
                {
                  num++;
                  addNum(x, y);
                }
                else
                  {
                    num = 1;
                    if(x > 0) {
                      addNum(x-1, y);
                    }
                    else
                      {
                        addNum(8, y-1);
                      }
                  }
            }
          else
          {
            num = 1;
            if(x >= 8)
            {
              addNum(0, y+1);
            }
            else
            {
              addNum(x+1, y);
            }
          }
        }
    }
    addNum(0,0);
  }
}