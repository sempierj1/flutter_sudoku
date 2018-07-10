import 'dart:developer';

class Check {
  List board;
  int checkNum;
  int startX;
  int startY;
  List numsSquare = new List();


  Check(List b) {
    board = b;
  }

  checkSpace(int x, int y) {
    checkNum = board[y][x].num;
    for (int i = 0; i < 9; i++) {
      if (board[i][x].num == checkNum && i != y) {
        return false;
      }
    }
    for (int j = 0; j < 9; j++) {
      if (board[y][j].num == checkNum && j != x) {
        return false;
      }
    }
    /*
      if((x + 1) % 3 == 0)
        {
          if((y+1) % 3 == 0) {
            if (board[y - 1][x - 1].num == checkNum) {
              return false;
            }
            if (board[y - 2][x - 1].num == checkNum) {
              return false;
            }
            if (board[y - 2][x - 2].num == checkNum) {
              return false;
            }
            if (board[y - 1][x - 2].num == checkNum) {
              return false;
            }
          }
          else if((y+1) % 3 == 1)
            {
              if (board[y - 1][x - 1].num == checkNum) {
                return false;
              }
              if (board[y + 1][x - 1].num == checkNum) {
                return false;
              }
              if (board[y + 1][x - 2].num == checkNum) {
                return false;
              }
              if (board[y - 1][x - 2].num == checkNum) {
                return false;
              }
            }
            else if((y+1) % 3 == 2)
              {
                if (board[y + 1][x - 1].num == checkNum) {
                  return false;
                }
                if (board[y + 2][x - 1].num == checkNum) {
                  return false;
                }
                if (board[y + 1][x - 2].num == checkNum) {
                  return false;
                }
                if (board[y + 2][x - 2].num == checkNum) {
                  return false;
                }
              }
        }*/

    if (x < 3) {
      startX = 0;
    } else if (x < 6) {
      startX = 3;
    } else {
      startX = 6;
    }

    if (y < 3) {
      startY = 0;
    } else if (y < 6) {
      startY = 3;
    } else {
      startY = 6;
    }
    numsSquare.clear();
    for(int i = startY; i < startY + 3; i++)
      {
        for(int j = startX; j < startX + 3; j++)
          {
            if(numsSquare.contains(checkNum))
              {
                print(numsSquare);
                print(checkNum.toString());
                return false;
              }
              else {
              if(i == y && j == x){}
              else {
                numsSquare.add(board[i][j].num);
              }
            }
          }
      }
      return true;
  }
}
