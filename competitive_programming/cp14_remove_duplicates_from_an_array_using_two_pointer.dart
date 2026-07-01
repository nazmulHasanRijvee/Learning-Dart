/// Remove duplicates from an sorted array
// Use Read and Write two pointer pattern
// don't create another list, modify existing one and don't use Set
void main() {
  final numbers = [1 ,1, 2, 2, 3, 4, 4];
  int write = 1; // starts from 1 because 0 index is already unique and no previous element to compare to
  for(int i = 1; i < numbers.length; i++){
    if(numbers[i] != numbers[write -1]){ // while loop use because after each pop loop length changes
      numbers[write] = numbers[i];
      write++;
    }
  }
  numbers.removeRange(write, numbers.length);
  print(numbers);
}