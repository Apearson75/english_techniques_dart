import 'dart:math';

import 'package:english_words/src/words/nouns.dart' as nouns;
import 'package:english_words/src/words/adjectives.dart' as adjectives;
import 'techniques.dart';
import 'data/reasons.dart';

class ParaMaker {
  String authorPara(author, point, story, quote) {
    Random random = Random();
    
    String startPoint = '$author shows $point in $story.';
    String evident = 'This is evident in the quote "$quote".';
    
    String shown = '';
    String reason = '';
    final simile = Techniques().simile(quote);
    if(simile == true) { 
      shown = 'The use of a simile shows that';
      int randomSimileReason = random.nextInt(simileReasons.length);
      reason = simileReasons[randomSimileReason]; 
    }
    
    String para = '$startPoint $evident $shown $reason';
    return para; 
  }
}