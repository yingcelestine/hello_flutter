int sum(List<int> numbers) {
  return sum1(numbers[0], numbers[1], numbers[2]);
}

int sum1(int x, int y, int z) {
  return x + y + z;
}

main(List<String> args) {
  const list = [
    [1, 2, 3],
    [3, 4, 5],
    [5, 6, 7]
  ];
  final list1 = list.map(sum);
  print(list1);
}
