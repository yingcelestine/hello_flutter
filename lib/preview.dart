int add() {
  int y = 3;
  int add1() {
    int z = 4;
    int add2() {
      int r = 5;
      int add3() {
        int t = y + z + r;
        assert(y == 3);
        assert(z == 4);
        assert(r == 5);
        return t;
      }

      return add3();
    }

    return add2();
  }

  return add1();
}

Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

main() {
  var Add2 = makeAdder(2);
  var Add3 = makeAdder(3);
  assert(Add2(5) == 7);
  assert(Add3(9) == 12);
  print(Add3(10));

  outerloop:
  for (var i = 0; i < 5; i++) {
    print("Innerloop: $i");
    innerloop:
    for (var j = 0; j < 5; j++) {
      if (j > 3) break;
      if (i == 2) break innerloop;
      if (i == 4) break outerloop;
      print("Innerloop: $j");
    }
  }

  outerloop: // This is the label name

  for (var i = 0; i < 3; i++) {
    print("Outerloop:$i");

    for (var j = 0; j < 5; j++) {
      if (j == 3) {
        continue outerloop;
      }
      print("Innerloop:$j");
    }
  }

  print(num.parse("12.34"));
  print(12.34.toString());
  //print(num.parse("15B"));   Erro
  double n1 = 2.5;
  double n2 = 2.9;
  var value1 = n1.toInt();
  var value2 = n2.toInt();
  print("Output = $value1");
  print("Output = $value2");
  print("Output = ${n2.truncate()}");
  print("Output = ${n2.round()}");

  String str1 = "   Hello, Tom!";
  print("New String: ${str1.replaceAll("Tom!", "Katty!")}");
  print(str1.trim());
  String str2 = "Today is Friday";
  print("${str2.split(",")}");
  String str3 = "Hello World";
  print("New String: ${str3.substring(6)}");

  // from index 6 to the last index
  print("New String: ${str3.substring(2, 7)}");

  var str = 'abc';
  if (str.isNotEmpty) {
    print('String is not empty');
  } else {
    print('Empty String');
  }

  print("Result of add(): ${add()}");
}
