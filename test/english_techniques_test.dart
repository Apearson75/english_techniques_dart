import 'package:flutter_test/flutter_test.dart';

import 'package:english_techniques/english_techniques.dart';

void main() {
  test('This will show a Author Paragraph', () {
    print(ParaMaker().authorPara("John", "kindness", "Jack and the beanstalk", "The tree waved at him"));
  });
  test('This will show if it is a simile', () {
    print(Techniques().simile(""));
  });
  test('This will print adjectives', () {
    for (var i = 1; i<=5; i++){  
      print(Generator().randomSimile("man"));
    }  
  });
  test('Generate Random Adverbs and Adjectives', () {
    for (var i = 1; i<=5; i++){   
      print(Generator().randomAdverb());
    }  
  });
}
