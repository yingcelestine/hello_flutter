printInteger(int aNumber) {
  print("The number is $aNumber.");
}

main() {
  var number = 35;
  printInteger(number);

  final lineCount = 4;
  // assert(lineCount == 2);
  if (lineCount == 2) {
    String age = lineCount.toString();
    print("I'm $age years old now.");
  } else {
    print("I'm sorry, I don't know how old I'm.");
  }

  String s1 = "string is"
      " just a string.";
  assert(s1 ==
      "string is just"
      " a string.");
  print(s1);
  String s2 = "string is just" + " a" + " string.";
  assert(s2 == "string is just a string.");
  if (s1 == s2) {
    print("$s1 is equal to $s2");
  } else {
    print("$s1 is not equal to $s2");
  }

  String a = "abc\ndef\nghi";
  String b = """abc
def
ghi""";
  assert(a == b);
  print(a);
  print(b);

  String c =
      r"There is no special treatment with \n if you put a 'r' in front of the string";
  print(c);

  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  //Const variables must be initialized with a constant value.
  //const invalidConstString = '$aNum $aBool $aString $aConstList';

  String joke(String name1, String name2,
      [String name3 = "Li Ming", String thing]) {
    var sentence = "$name1 and $name2 are playing games.";
    if (thing != null) {
      sentence = "$name1 and $name2 are playing games and $thing.";
    }
    if (name3 != null) {
      sentence = "$name1 and $name2 are playing games with $name3.";
    }
    return sentence;
  }

  print(joke("Lily", "Anni"));
  final name1 = "katy", name2 = "Daly", thing1 = "laughing";
  print(joke(name1, name2, null, thing1));

  print(joke("Katy", "Dali", "Li Ming", "laughing"));

  List<int> list = const [3, 4, 5];
  int age(int n) {
    print(n);
  }

  list.forEach(age);
  list.forEach((item) {
    print("I'm $item years old.");
  });

  var upperCase = (str) => "${str.toUpperCase()}";
  print(upperCase("hello"));
}
