void main() {
  var email = "john.doe@example.com";

  var parts = email.split("@");
  //Splits into 2 list - [john.doe, example.com]

  if (parts.isNotEmpty) {
    var localPart = parts[0];
    // so here local parts = john.doe
    print(localPart);
    String maskedLocalPart = '';

    if (localPart.length > 2) {
      maskedLocalPart += localPart[0];
      print(maskedLocalPart);
      // prints "j"

      for (int i = 1; i < localPart.length - 1; i++) {
        maskedLocalPart += '*';
        // print(maskedLocalPart);
      }

      maskedLocalPart += localPart[localPart.length - 1];
      print(localPart[localPart.length - 1]);
      // prints "e"

      print(maskedLocalPart);
    } else {
      maskedLocalPart = localPart;
    }

    parts[0] = maskedLocalPart;
    // here the part[0] is replaced with maskedLocalPart.
  }
  print(parts);
} // prints [j******e, example.com]
