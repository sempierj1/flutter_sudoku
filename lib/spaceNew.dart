class Space{
  int num;
  int leftB;
  int rightB;
  int topB;
  int bottomB;
  int x;
  int y;
  bool hint;

  Space(int n, int l, int r, int t, int b, int xNew, int yNew, bool h)
  {
    num = n;
    leftB = l;
    rightB = r;
    topB = t;
    bottomB = b;
    x = xNew;
    y = yNew;
    hint = h;
  }
}