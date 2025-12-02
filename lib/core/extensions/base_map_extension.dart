extension MapExtension on Map {
  Map removeNull({List<String>? extensionKeys}) {
    Map myMap = this;
    myMap.removeWhere((key, value) =>
        value == null ||
        (extensionKeys?.contains(key) ?? false) ||
        (value is List && value.isEmpty));
    return myMap;
  }
}
