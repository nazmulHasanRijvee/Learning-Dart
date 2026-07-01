void main () {

  // do some operation

  int f = fibonacci(6); // n th position starts from O index which is first or 1
  print(f);
  // operation

  bool n = isPalindrome('fat', 0, 'fat'.length-1);

  print(n);

  generateSubsets([1, 2, 3]);

}

/// n! = n * (n-1) * (n-2) * (n-3) * ... * 1
/// Using loop
int fact(int n){

  int res = 1;
  for(int i = n; i > 1; i--){
    res *= i;
  }
  return res;

}

/// Using recursion
int factorial(int n){

  // base case
  if(n <= 1) return 1;

  // recursive case
  return n * factorial(n-1);

}

/// loop replacement
int addFour({int n = 1}){

  if(n >= 4) return n;

  return addFour(n: n+1);

}

/// Fibonacci series 0, 1, 1, 2, 3, 5, 8, 13, 21 ...
int fibonacci(int n){

  if(n == 0 || n == 1) return n;

  return fibonacci(n-1) + fibonacci(n-2);

}

/// Palindrome detection using recursion
bool isPalindrome(String str, int left, int right){

  // base case, responsible for stopping the recursion
  if(left >= right) return true;
  if(str[left] != str[right]) return false;

  // recursive case
  return isPalindrome(str, left+1, right-1); // Two pointer pattern of DSA

}

/// Backtracking
void generateSubsets(List<int> num){

  List<int> res = [];

  void backtrack (int index){

    print(List.from(res));

    for(int i = index; i < num.length; i++ ){
      res.add(num[i]);
      backtrack(i+1);
      res.removeLast();
    }
  }
  backtrack(0);
}