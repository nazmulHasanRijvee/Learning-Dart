void main() {

  /// Count frequency of letters in a string
  final String text = "banana";
  final Map<String, dynamic> freq = {};
  for(int i = 0; i < text.length; i++){
    if(freq[text[i]] == null) freq[text[i]] = 0; // if key doesn't exist initially create a key with value O
    freq[text[i]] = freq[text[i]] + 1;
  }
  // Show the map
  for(final i in freq.keys){
    print('$i : ${freq[i]}');
  }

}