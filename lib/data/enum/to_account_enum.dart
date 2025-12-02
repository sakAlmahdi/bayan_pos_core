enum ToAccount { deptor, cratedtor }

ToAccount convertStringToAccountTo(String? key) {
  switch (key) {
    case "0":
      return ToAccount.deptor;
    case "1":
      return ToAccount.cratedtor;

    default:
      return ToAccount.deptor;
  }
}

String convertAccountToToKey(ToAccount account) {
  switch (account) {
    case ToAccount.deptor:
      return "0";
    case ToAccount.cratedtor:
      return "1";
  }
}
