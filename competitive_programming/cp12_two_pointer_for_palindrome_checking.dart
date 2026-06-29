/// Use Two pointers pattern to determine whether it is a palindrome
// Examples:
// "madam" -> true
// "racecar" -> true
// Constraint don't reverse the string text[::-1]
// Compare first vs last then second first vs second last and so on
// racecar ->   racecar
// ^     ^       ^   ^
void main () {

  print(isPalindrome('racecar'));

}

bool isPalindrome(String checkStr) {

  final lastIndex = checkStr.length -1;

  for(int i = 0; i < checkStr.length ~/ 2; i++) {
    // if first and last doesn't match then break the loop and return false
    if(checkStr[i] != checkStr[lastIndex -i]) return false;
  }

  // if all matches and makes it here return true
  return true;

}