import 'package:english_techniques/src/data/adverbs.dart';

import 'data/adjectives.dart';
import 'data/nouns.dart';
import 'data/verbs.dart';
import 'dart:math';

class Generator {
    String randomSimile([noun]) {
        Random random = new Random();
        String Sentance = '';
        
        int asOrIf = random.nextInt(2);
        print(asOrIf);
        int adjNum = random.nextInt(adjectivesMonosyllabicSafe.length);
        int nounNum = random.nextInt(nouns.length);
        int comparedNounNum = random.nextInt(nouns.length);
        if (asOrIf == 0) {
          var adj = adjectivesMonosyllabicSafe[adjNum];
          if (noun == null || noun == '') { 
            noun = nouns[nounNum];
          }  
          var otherNoun = nouns[comparedNounNum];
          Sentance = 'The $noun was as if it was a $adj $otherNoun';
        }
        else if (asOrIf == 1) {
          var adj = adjectivesMonosyllabicSafe[adjNum];
          if (noun == null || noun == '') {  
            noun = nouns[nounNum];
          }  
          var otherNoun = nouns[comparedNounNum];
          Sentance = 'The $noun was like a $adj $otherNoun';
        }
      return Sentance;  
    }

    String randomAdverb() {
      Random random = Random();
      int adjNum = random.nextInt(adjectivesMonosyllabicSafe.length);
      int advNum = random.nextInt(adverbs.length);

      String adj = adjectivesMonosyllabicSafe[adjNum];
      String adverb = adverbs[advNum];
      return '$adverb $adj';
    }

    String randomPersonification([noun, verb]) {
      Random random = Random();
      int advNum = random.nextInt(adverbs.length);
      
      if (verb == null) {
        int verbNum = random.nextInt(verbs.length);
        verb = verbs[verbNum];
      }
      else if(verb == "") {
        int verbNum = random.nextInt(verbs.length);
        verb = verbs[verbNum];
      }
      
      if(noun == null) {
        int nounNum = random.nextInt(nouns.length);
        noun = nouns[nounNum];
      }
      else if(noun == "") {
        int nounNum = random.nextInt(nouns.length);
        noun = nouns[nounNum];
      }

      String adverb = adverbs[advNum];
      return 'The $noun $adverb $verb';
    }
}