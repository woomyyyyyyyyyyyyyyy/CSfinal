//returns true if all the inputs have the same color
//returns true if all the inputs are the same color
boolean sameColor(Card a, Card b, Card c) {
  return (a.getCol() / 3 == b.getCol() / 3 && b.getCol() / 3 == c.getCol() / 3); 
}

//returns true if all the inputs are the same shape
boolean sameShape(Card a, Card b, Card c) {
  return (a.getCol() % 3 == b.getCol() % 3 && b.getCol() % 3 == c.getCol() % 3);
}

//returns true if all the inputs are the same fill
boolean sameFill(Card a, Card b, Card c) {
  return (a.getRow() / 3 == b.getRow() / 3 && b.getRow() / 3 == c.getRow() / 3); 
}

//returns true if all the inputs are the same count
boolean sameCount(Card a, Card b, Card c) {
  return (a.getRow() % 3 == b.getRow() % 3 && b.getRow() % 3 == c.getRow() % 3);
}

//returns true if all the inputs are different colors
boolean diffColor(Card a, Card b, Card c) {
  return (a.getCol() / 3 != b.getCol() / 3 && b.getCol() / 3 != c.getCol() / 3 && a.getCol() / 3 != c.getCol() / 3); 
}

//returns true if all the inputs are different shapes
boolean diffShape(Card a, Card b, Card c) {
  return (a.getCol() % 3 != b.getCol() % 3 && b.getCol() % 3 != c.getCol() % 3 && a.getCol() % 3 != c.getCol() % 3);
}

//returns true if all the inputs are different fills
boolean diffFill(Card a, Card b, Card c) {
  return (a.getRow() / 3 != b.getRow() / 3 && b.getRow() / 3 != c.getRow() / 3 && a.getRow() / 3 != c.getRow() / 3); 
}

//returns true if all the inputs are different counts
boolean diffCount(Card a, Card b, Card c) {
  return (a.getRow() % 3 != b.getRow() % 3 && b.getRow() % 3 != c.getRow() % 3 && a.getRow() % 3 != c.getRow() % 3);
}  

//return true if SET conditions are met for inputs
boolean isSet(Card a, Card b, Card c) {
  return ((sameCount(a, b, c) || diffCount(a, b, c)) 
      && (sameShape(a, b, c) || diffShape(a, b, c)) 
      && (sameFill(a, b, c) || diffFill(a, b, c))
      && (sameColor(a, b, c) || diffColor(a, b, c)));
}
