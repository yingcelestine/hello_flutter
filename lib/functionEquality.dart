void foo() {}

// how do you call the bar method?
class A {
  static void bar() {}
  void hello() {
    print("hello");
  }
}

main(List<String> args) {
  A.bar();
  var a = A();
  a.hello();
  var x;
  x = foo;
  assert(foo == x);
  x = A.bar;
  assert(x == A.bar);
  var v = A(); // v is an instance of A
  var w = A(); // w is also instance of A
  var y = w;
  assert(y == w);
  x = w.hello;
  assert(x == y.hello);
  assert(v.hello != w.hello);
}
