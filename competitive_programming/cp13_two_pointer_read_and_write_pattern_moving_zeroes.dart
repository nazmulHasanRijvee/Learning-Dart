/// Moving all the zeroes in an array to the last using two pointer
// Constraints:
// Don't create another list or use.pop() method
// Think in terms of two pointer
// Read and write two pointer pattern
void main() {
  final numbers = [0, 1, 0, 3, 12];
  int write = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] != 0) {
      numbers[write] = numbers[i];
      write++;
    }
  }

  for (int i = write; i < numbers.length; i++) {
    numbers[i] = 0;
  }

  print(numbers);
}
