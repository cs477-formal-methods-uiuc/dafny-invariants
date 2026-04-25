method m(n: nat)
{
  var i: int := 0;
  var ans: int := 0;
  while i < n 
  // Write invariants
  {
    i := i + 1;
    ans := ans + i*i;
  }
  assert ans == n*(n+1)*(2*n+1)/6;
}