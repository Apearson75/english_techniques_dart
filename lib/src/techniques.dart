import 'data/verbs.dart';
import 'data/onomatopoeia.dart';

class Techniques {
  static bool simile(String quote) {
    bool isSimile = false;
    List<String> words = quote.split(" ");

    words.forEach((element) {
      if (element == "like") {
        isSimile = true;
      } else if (element == 'as') {
        isSimile = true;
      }
    });
    return isSimile;
  }

  static bool personification(String quote) {
    bool isPerson = false;
    verbs.forEach((element) {
      if (quote.contains(element)) {
        isPerson = true;
      }
    });
    return isPerson;
  }

  static bool onomato(String quote) {
    bool isOnomato = false;
    quote = quote.toLowerCase();

    onomatopoeia.forEach((element) {
      if (quote.contains(element)) {
        isOnomato = true;
      }
    });

    return isOnomato;
  }

  static bool aliteration(String quote) {
    bool isAliteration = false;
    List<String> splitQuote = quote.split(' ');
    for (int i = 0; i < splitQuote.length; i++) {
      try {
        String wordLetter = splitQuote[i].substring(0, 1);
        String nextWordLetter = splitQuote[i + 1].substring(0, 1);
        if (wordLetter == nextWordLetter) {
          isAliteration = true;
        }
      } catch (e) {}
    }
    return isAliteration;
  }
}
