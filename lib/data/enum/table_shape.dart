/*
        Square = 1,
        RectangleVertical = 2,
        RectangleHorizontal = 3,
        Round = 4,
*/

enum TableShaps {
  square,
  round,
  rectangleVertical,
  rectangleHorizontal,
  diamond,
}

TableShaps convertStringToTableShaps(int? key) {
  switch (key) {
    case 1:
      return TableShaps.square;
    case 2:
      return TableShaps.rectangleVertical;
    case 3:
      return TableShaps.rectangleHorizontal;
    case 4:
      return TableShaps.round;
    case 5:
      return TableShaps.diamond;
    default:
      return TableShaps.square;
  }
}
