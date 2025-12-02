enum LanguageType {
  local,
  secondary,
  both,
}

convertKeyToLanguageType(int key) {
  switch (key) {
    case 0:
      return LanguageType.local;
    case 1:
      return LanguageType.secondary;
    case 2:
      return LanguageType.both;
  }
}

extension LanguageTypeEx on LanguageType {
  int toKey() {
    switch (this) {
      case LanguageType.local:
        return 0;
      case LanguageType.secondary:
        return 1;
      case LanguageType.both:
        return 2;
    }
  }
}
