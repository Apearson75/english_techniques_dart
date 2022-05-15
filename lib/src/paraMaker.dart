import 'dart:math';

import 'package:english_words/src/words/nouns.dart' as nouns;
import 'package:english_words/src/words/adjectives.dart' as adjectives;
import 'techniques.dart';
import 'data/reasons.dart';

class ParaMaker {
  static String authorPara(author, point, story, quote) {
    Random random = Random();

    String startPoint = '$author shows $point in $story.';
    String evident = 'This is evident in the quote "$quote".';

    String shown = '';
    String reason = '';
    String secondReason = '';

    final simile = Techniques.simile(quote);
    final personification = Techniques.personification(quote);

    if (simile == true) {
      shown = 'The use of a simile shows that';
      int randomSimileReason = random.nextInt(simileReasons.length);
      reason = simileReasons[randomSimileReason];
      int randomSimileReasonSecond = random.nextInt(simileReasons.length);

      while (randomSimileReason == randomSimileReasonSecond) {
        randomSimileReasonSecond = random.nextInt(simileReasons.length);
      }

      secondReason = simileReasons[randomSimileReasonSecond];
      secondReason = 'Furthermore, it can suggest that $secondReason';
    } else if (personification == true) {
      shown = 'The use of personification shows that';
      int randomPersonReason = random.nextInt(personReasons.length);
      reason = personReasons[randomPersonReason];
      int randomPersonReasonSecond = random.nextInt(personReasons.length);

      while (randomPersonReason == randomPersonReasonSecond) {
        randomPersonReasonSecond = random.nextInt(personReasons.length);
      }

      secondReason = personReasons[randomPersonReasonSecond];
      secondReason = 'Furthermore, it can suggest that $secondReason';
    }

    String para = '$startPoint $evident $shown $reason $secondReason';
    return para;
  }

  static String charPara(character, when, how, quote) {
    Random random = Random();

    String startPoint = "$character is presented in the $when as $how";
    String evident = "This is evident in the quote '$quote'.";

    final simile = Techniques.simile(quote);
    final personification = Techniques.personification(quote);

    String suggest = '';

    if (simile == true) {
      dynamic randomSimileReason = random.nextInt(simileCharReasons.length);
      randomSimileReason = simileCharReasons[randomSimileReason];
      suggest = 'The use of a simile suggests that $randomSimileReason.';
    }
    String para = "$startPoint $evident $suggest";
    return para;
  }
}
