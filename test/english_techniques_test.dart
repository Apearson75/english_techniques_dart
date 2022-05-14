import 'package:flutter_test/flutter_test.dart';

import 'package:english_techniques/english_techniques.dart';

void main() {
  test('This will show a Author Paragraph', () {
    print(ParaMaker.authorPara(
        "John", "kindness", "Jack and the beanstalk", "The tree waved at him"));
  });
  test('This will show if it is a simile', () {
    print(Techniques.simile("it was as if the being was still alive"));
  });
  test('This will print adjectives', () {
    for (var i = 1; i <= 5; i++) {
      print(Generator.randomSimile("man"));
    }
  });
  test('Generate Random Simile', () {
    for (var i = 1; i <= 5; i++) {
      print(Generator.randomSimile('man'));
    }
  });
  test('Generates Random Personification', () {
    for (var i = 1; i <= 5; i++) {
      print(Generator.randomPersonification('bush', 'danced'));
    }
  });
  test('Checks for Aliteration', () {
    // Should print true
    print(Techniques.aliteration('The relics rumbled in the dark'));
  });
}
