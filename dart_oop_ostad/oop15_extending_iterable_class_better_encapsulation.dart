void main () async {

  final words = Words();

  for(final letters in words) {
    print(letters);
  }

  print(words.first);


}

// Making world iterable (able to loop over it)
class Words extends Iterable<Letter> {

  static final List<Letter> _letters = [];

  @override
  final iterator = _letters.iterator; // assigning Lists iterator since we are wrapping this to iterate over

}

class Letter {

  final String letter;

  Letter({required this.letter});

}
