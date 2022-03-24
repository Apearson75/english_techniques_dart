class Techniques {
  bool simile(String quote) {
    bool isSimile = false;
    if(quote.contains("like")) {
      isSimile = true;
    }
    else if (quote.contains('as')) {
      isSimile = true;
    }
    return isSimile;
  }
}