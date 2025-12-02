String convertLanguageTypeToString(int? key) {
  switch (key) {
    case 0:
      return "Local";
    case 1:
      return "Secondary";
    case 2:
      return "Both";
    default:
      return "Local";
  }
}
