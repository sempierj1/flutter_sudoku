class BoardStore{
  List boardValues;
  List hintLocs;

  BoardStore()
  {
    boardValues = new List.generate(9, (_) => new List(9));
    hintLocs = new List.generate(9, (_) => new List(9));
    for(int i = 0; i < 9; i++)
      {
        for(int j = 0; j < 9; j++)
          {
            boardValues[i][j] = 0;
            hintLocs[i][j] = false;
          }
      }
  }

  updateNum(int x, int y, int n)
  {
    boardValues[y][x] = n;
  }
  updateHint(int x, int y, bool h)
  {
    hintLocs[y][x] = h;
  }

  getNum(x, y)
  {
    return boardValues[y][x];
  }

  getHints()
  {
    return hintLocs;
  }
  getBoard()
  {
    return boardValues;
  }
}