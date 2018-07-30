import 'check.dart';
import 'dart:developer';

class Solve{
  Check check;
  List board;

  Solve(List b)
  {
    board = b;
    check = new Check();
  }

  List spaces;

  List bruteSolve()
  {
    int count = 0;
    //int iterations = 0;
    int num = 1;
    List addNum(int x, int y) {
      int x = 0;
      int y = 0;
      bool done = false;
     // iterations++;
     // print(iterations.toString() + " ITERATIONS");
      //print(x.toString() + "," + y.toString() + "=" + board[y][x].num.toString());
      if(board[y][x].num == 0 || board[y][x].hint != true)
        {
          board[y][x].num = num;
          if(!check.checkSpace(board, x, y))
            {
              //print(count.toString() + " COUNT");
              if(num < 9 && count < 10)
                {
                  num++;
                  return addNum(x, y);
                }
                else
                  {
                    num = 1;
                    if(x > 0 && count < 10) {
                      return addNum(x-1, y);
                    }
                    else
                      {
                        if(count < 10)
                        return addNum(8, y-1);
                      }
                  }
            }
          else
          {
            num = 1;
            if(x >= 8 && y >= 8)
              {
                print("DONE");
                return board;
              }
            else if(x >= 8 && count < 10)
            {
               return addNum(0, y+1);
            }
            else
            {
              if(count < 10)
              return addNum(x+1, y);
            }
          }
        }
      else
      {
        num = 1;
        if(x >= 8 && y >= 8)
        {
          print("DONE");
          return board;
        }
       else if(x >= 8 && count < 10)
        {
          return addNum(0, y+1);
        }
        else
        {
          if(count < 10)
          return addNum(x+1, y);
        }
      }
      return board;
    }

    return addNum(0,0);
  }
}