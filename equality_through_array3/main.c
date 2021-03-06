#define LIMIT 10

void fill_array (int *a, int length)
{
  for (int i = 0; i < length; ++i) {
    a[i] = i;
  }

  return;
}

void main ()
{
  int a[LIMIT];

  fill_array(a,LIMIT);

  int x;
  int y;

  assume(0 <= x && x < LIMIT);
  assume(0 <= y && y < LIMIT);
  assume(x + y < LIMIT);

  assert(a[x] + a[y] == x + y);

  return 1;
}
