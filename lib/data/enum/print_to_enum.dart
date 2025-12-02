enum PrintTo { department, categeory, item }

PrintTo convertStringToPrintTo(int? key) {
  switch (key) {
    case 0:
      return PrintTo.department;
    case 1:
      return PrintTo.categeory;
    case 2:
      return PrintTo.item;
    default:
      return PrintTo.item;
  }
}
