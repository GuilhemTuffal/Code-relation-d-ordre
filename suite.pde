int fact(int x) {
  int res=1;
  for (int i=2; i<=x; i++) {
    res*=i;
  }
  return res;
}
int facto(int x, int y) {
  int res=1;
  for (int i=y+1; i<=x; i++) {
    if (i>0) {
      res*=i;
    }
  }
  return res;
}
int choose(int k, int l, int n) {
  int temp=max(int(k), int(l), int(n-l-k));
  if (temp==k) {
    return facto(n, temp)/(fact(l)*fact(n-l-k));
  } else if (temp==l) {
    return facto(n, temp)/(fact(k)*fact(n-l-k));
  }
  return facto(n, temp)/(fact(l)*fact(k));
}
