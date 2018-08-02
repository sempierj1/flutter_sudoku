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


  List bruteSolve()
  {
    int count = 0;
    //int iterations = 0;
    int num = 1;
    int x = 0;
    int y = 0;
    bool done = false;
    do {
      count++;
      //List addNum(int x, int y) {

      // iterations++;
      // print(iterations.toString() + " ITERATIONS");
      //print(x.toString() + "," + y.toString() + "=" + board[y][x].num.toString());
      if (board[y][x].num == 0 || board[y][x].hint != true) {
        board[y][x].num++;
        print("X - " + x.toString() + " ,Y - " + y.toString() + " " +
            board[y][x].num.toString());
        if (board[y][x].num > 9) {
          board[y][x].num = 0;
          if (x > 0) {
            x--;
          }
          else {
            y--;
            x = 8;
          }

          if (!check.checkSpace(board, x, y)) {
            //print(count.toString() + " COUNT");
            if (num < 9) {
              //num++;
              //return addNum(x, y);
            }
            else {
              if (x > 0) {
                x--;
                //return addNum(x - 1, y);
              }
              else {
                y--;
                x = 8;
                //return addNum(8, y - 1);
              }
            }
          }
          else {
            //num = 1;
            if (x >= 8 && y >= 8) {
              print("DONE");
              done = true;
              //return board;
            }
            else if (x >= 8) {
              y++;
              x = 0;
              //return addNum(0, y + 1);
            }
            else {
              x++;

              //return addNum(x + 1, y);
            }
          }
        }
      }
        else {
          //num = 1;
          if (x >= 8 && y >= 8) {
            print("DONE");
            done = true;
            //return board;
          }
          else if (x >= 8) {
            x = 0;
            y++;
            //return addNum(0, y + 1);
          }
          else {
            x++;
            //return addNum(x + 1, y);
          }
        }

      //}
      //return addNum(0, 0);
    } while (!done);
    return board;
  }
}