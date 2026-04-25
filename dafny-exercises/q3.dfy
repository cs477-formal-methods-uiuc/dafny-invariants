method Find(a: array<int>, key: int) returns (index: int)
  ensures 0 <= index
  ensures index < a.Length ==> a[index] == key
  ensures index >= a.Length  ==> forall k :: 0 <= k < a.Length ==> a[k] != key
{
  index := 0;
  while index < a.Length
    // Write invariants
  {
    if a[index] == key { return; }
    index := index + 1;
  }
}