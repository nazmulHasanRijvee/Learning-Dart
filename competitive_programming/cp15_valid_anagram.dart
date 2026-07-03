/// Find if Valid Anagram or not
// Two strings are called Anagrams if they contain the same characters
// with the same frequencies, but possibly in a different order
// Example: s = "listen"
//          t = "silent"
// Anagrams. Output should be true
void main () {

  final String s = "listen";
  final String t = "silent";
  print(isValidAnagram(s, t));
}

bool isValidAnagram(String s, String t){

  if(s.length != t.length) return false;

  final Map<String, int> freq = {};

  for(int i = 0; i < s.length; i++){
    if(!freq.containsKey(s[i])) freq[s[i]] = 0;
    freq[s[i]] = freq[s[i]]! + 1;
  }

  for(int i =0; i < t.length; i++) {
    if(!freq.containsKey(t[i])) freq[t[i]] = 0;
    freq[s[i]] = freq[s[i]]! - 1;
    if(freq[t[i]]! < 0) return false;
  }

  return true;

}