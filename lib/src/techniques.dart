import 'data/verbs.dart';
import 'data/onomatopoeia.dart';

class Techniques {
  bool simile(String quote) {
    bool isSimile = false;
    List<String> words = quote.split(" ");

    words.forEach((element) { 
      if(element == "like") {
        isSimile = true;
      }
      else if (element == 'as') {
        isSimile = true;
      }
    });
    return isSimile;
  }

  bool personification(String quote) {
    bool isPerson = false;
    verbs.forEach((element) {
      if(quote.contains(element)){
        isPerson = true;
      }
    });
    return isPerson;
  }

  bool onomato(String quote) {
    bool isOnomato = false;
    quote = quote.toLowerCase();

    onomatopoeia.forEach((element) { 
      if(quote.contains(element)) {
        isOnomato = true;
      }
    });

    return isOnomato;
  }
}